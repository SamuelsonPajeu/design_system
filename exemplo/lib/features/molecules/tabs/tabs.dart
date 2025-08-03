import 'package:design_system/core/components/molecules/tabs/ds_tabs.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class TabComponente extends StatefulWidget {
  const TabComponente({super.key});

  @override
  State<TabComponente> createState() => _TabComponenteState();
}

class _TabComponenteState extends State<TabComponente>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Tabs'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          // Primeira linha de tabs
          DSTabs.title(
            tabs: <DSTabModel>[
              DSTabModel(title: 'TAB'),
              DSTabModel(title: 'TAB'),
              DSTabModel(title: 'TAB'),
            ],
            tabController: _tabController,
          ),
          const SizedBox(height: 16),
          // Segunda linha de tabs com ícones
          DSTabs.bulletTop(
            tabs: <DSTabModel>[
              DSTabModel(title: 'TAB', icon: Symbols.circle),
              DSTabModel(title: 'TAB', icon: Symbols.circle),
              DSTabModel(title: 'TAB', icon: Symbols.circle),
            ],
            tabController: _tabController,
          ),
          const SizedBox(height: 16),
          // Terceira linha de tabs (icone)
          DSTabs.bulletTop(
            tabs: <DSTabModel>[
              DSTabModel(icon: Symbols.circle),
              DSTabModel(icon: Symbols.circle),
              DSTabModel(icon: Symbols.circle),
            ],
            tabController: _tabController,
          ),
          const SizedBox(height: 16),
          // Quarta linha de tabs com ícones e textos alinhados
          DSTabs.bulletLeft(
            tabs: <DSTabModel>[
              DSTabModel(title: 'TAB'),
              DSTabModel(title: 'TAB'),
              DSTabModel(title: 'TAB'),
            ],
            tabController: _tabController,
          ),
          const SizedBox(height: 16),
          // Quinta linha de tabs com ícones e textos alinhados
          DSTabs.bulletLeft(
            tabs: <DSTabModel>[
              DSTabModel(title: 'TAB', icon: Symbols.circle),
              DSTabModel(title: 'TAB', icon: Symbols.circle),
              DSTabModel(title: 'TAB', icon: Symbols.circle),
            ],
            tabController: _tabController,
          ),
        ],
      ),
    );
  }
}
