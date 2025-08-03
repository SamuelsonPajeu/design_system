import 'package:design_system/core/components/molecules/app_bar/ds_app_bar.dart';
import 'package:design_system/core/components/molecules/floating_action_button/ds_floating_action_button.dart';
import 'package:design_system/core/components/molecules/listtile/ds_listtile.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/components/molecules/tabs/ds_tabs.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_input.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_map.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_type_of_input.dart';
import 'package:design_system/core/components/organisms/form/presentation/page/ds_custom_form.dart';
import 'package:design_system/core/components/templates/animated_collapse/ds_animated_collapse.dart';
import 'package:design_system/core/components/templates/base_list/controller/ds_base_list_controller.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum DSBaseListType { pageMode, listMode, justSliverList }

class DSBaseListModelTabs {
  final DSTabModel tab;
  final List<DSListTile> itemsList;
  DSBaseListModelTabs({required this.tab, required this.itemsList});
}

class DSBaseList extends StatefulWidget {
  const DSBaseList(
      {super.key,
      required this.controllerList,
      this.padding,
      this.floatingActionButton,
      this.showFloatingActionButtonOnScroll = false,
      this.showFloatingActionButtonMaxScroll,
      this.typeList = DSBaseListType.pageMode,
      required List<DSListTile> itemsList,
      this.header})
      : _showTabs = false,
        _tabController = null,
        _tabsType = DSTabsType.bulletLeft,
        _tabs = null,
        _itemsList = itemsList;

  final EdgeInsetsGeometry? padding;
  final DSFloatingActionButton? floatingActionButton;
  final ScrollController controllerList;
  final bool? showFloatingActionButtonOnScroll;
  final double? showFloatingActionButtonMaxScroll;
  final DSBaseListType typeList;
  final Widget? header;

  const DSBaseList.tabs(
      {super.key,
      required this.controllerList,
      this.padding,
      this.floatingActionButton,
      this.showFloatingActionButtonOnScroll = false,
      this.showFloatingActionButtonMaxScroll,
      this.typeList = DSBaseListType.pageMode,
      required TabController tabController,
      DSTabsType tabsType = DSTabsType.bulletLeft,
      required List<DSBaseListModelTabs> tabs,
      this.header})
      : _showTabs = true,
        _tabController = tabController,
        _tabsType = tabsType,
        _tabs = tabs,
        _itemsList = null;

  final bool _showTabs;
  final TabController? _tabController;
  final DSTabsType _tabsType;
  final List<DSBaseListModelTabs>? _tabs;

  final List<DSListTile>? _itemsList;

  @override
  State<DSBaseList> createState() => _DSBaseListState();
}

class _DSBaseListState extends State<DSBaseList> with TickerProviderStateMixin {
  late bool _enableButton = false;
  bool _showFilters = true;
  double _lastOffset = 0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<DSShakeErrorState> searchShakeKey =
      GlobalKey<DSShakeErrorState>();

  _listener() {
    if (!widget.controllerList.hasClients) {
      return;
    }

    final maxScroll = widget.showFloatingActionButtonMaxScroll ??
        widget.controllerList.position.maxScrollExtent;
    final minScroll = widget.controllerList.position.minScrollExtent;
    final offSet = widget.controllerList.offset;

    bool button = _enableButton;
    bool filters = _showFilters;

    if (offSet >= maxScroll) {
      button = true;
    }
    if (offSet <= minScroll) {
      button = false;
    }

    if (button == true) {
      if (offSet > _lastOffset && _showFilters) {
        filters = false;
      } else if (offSet < _lastOffset && !_showFilters) {
        filters = true;
      }
    } else {
      filters = true;
    }

    if (mounted) {
      setState(() {
        _enableButton = button;
        _showFilters = filters;
      });
    }
    _lastOffset = offSet;
  }

  @override
  void initState() {
    super.initState();
    if (widget.showFloatingActionButtonOnScroll == true) {
      widget.controllerList.addListener(_listener);
    } else {
      _enableButton = true;
      _showFilters = true;
    }
  }

  @override
  void dispose() {
    if (widget.showFloatingActionButtonOnScroll == true) {
      if (widget.controllerList.hasClients) {
        widget.controllerList.removeListener(_listener);
      }
    }
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DSBaseListController>(
      create: (_) => DSBaseListController(
          isTabMode: widget._showTabs,
          itemsList: widget._itemsList,
          tabs: widget._tabs),
      child: typeList(),
    );
  }

  Widget typeList() {
    switch (widget.typeList) {
      case DSBaseListType.pageMode:
        return DSScaffold(
          appBar: DSAppBar(text: 'BaseList', context: context),
          floatingActionButton:
              _enableButton ? widget.floatingActionButton : null,
          body: customScrollView(),
        );
      case DSBaseListType.listMode:
        return customScrollView();
      case DSBaseListType.justSliverList:
        return Consumer<DSBaseListController>(
          builder: (contextFromConsumer, listController, child) {
            return listBuilder(
                contextFromConsumer, listController.cardsSearch.toList());
          },
        );
    }
  }

  Widget customScrollView() {
    return Consumer<DSBaseListController>(
        builder: (contextFromConsumer, listController, child) {
      List<Widget> bodyList = [];

      if (widget._showTabs) {
        List<Widget> listsPage = [];
        for (var i = 0; i < (widget._tabs?.length ?? 0); i++) {
          listsPage.add(
              listBuilder(contextFromConsumer, widget._tabs![i].itemsList));
        }

        final List<Widget> finalBody = [
          tabBarBuilder(
              tabsType: widget._tabsType,
              tabController: widget._tabController!,
              tabs: widget._tabs!),
          Expanded(
              child: TabBarView(
            controller: widget._tabController!,
            children: listsPage,
          ))
        ];
        bodyList.addAll(finalBody);
      } else {
        bodyList.add(Expanded(
            child: listBuilder(
                contextFromConsumer, listController.cardsSearch.toList())));
      }

      return Container(
        margin: widget.padding ?? const EdgeInsets.all(0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              DSAnimatedCollapse(
                collapsed: !_showFilters,
                duration: const Duration(milliseconds: 300),
                child: Column(
                  children: [
                    widget.header ?? Container(),
                    searchBar(contextFromConsumer),
                    filterBuilder(contextFromConsumer),
                  ],
                ),
              ),
              if (bodyList.isNotEmpty && bodyList.first is Expanded)
                bodyList.first
              else if (bodyList.isNotEmpty)
                Expanded(child: bodyList.first)
              else
                const SizedBox.shrink(),
            ],
          ),
        ),
      );
    });
  }

  Widget searchBar(BuildContext providedContext) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: DSCustomForm(
          customFormMap: DSCustomFormMap(
              formKey: formKey,
              listDSCustomFormInput: <DSCustomFormInput>[
            DSCustomFormInput(
                typeOfInput: DSTypeOfInput.custom,
                controller: searchController,
                hintText: 'Buscar',
                shakeKey: searchShakeKey,
                onChanged: (value) {
                  Provider.of<DSBaseListController>(providedContext,
                          listen: false)
                      .changeSearchString(value);
                },
                validate: false,
                readOnly: false,
                required: false)
          ])),
    );
  }

  Widget filterBuilder(BuildContext providedContext) {
    return Container();
  }

  Widget tabBarBuilder({
    required DSTabsType tabsType,
    required List<DSBaseListModelTabs> tabs,
    required TabController tabController,
  }) {
    final List<DSTabModel> listOfTabs = [];
    for (var e in tabs) {
      listOfTabs.add(e.tab);
    }
    switch (tabsType) {
      case DSTabsType.title:
        return DSTabs.title(
          tabs: listOfTabs,
          tabController: tabController,
        );
      case DSTabsType.bulletTop:
        return DSTabs.bulletTop(
          tabs: listOfTabs,
          tabController: tabController,
        );
      case DSTabsType.bulletLeft:
        return DSTabs.bulletLeft(
          tabs: listOfTabs,
          tabController: tabController,
        );
    }
  }

  Widget listBuilder(BuildContext providedContext, List<DSListTile> itemsList) {
    return ListView.builder(
      controller: widget.controllerList,
      itemCount: itemsList.length,
      itemBuilder: (listViewContext, index) {
        return itemsList[index];
      },
    );
  }
}
