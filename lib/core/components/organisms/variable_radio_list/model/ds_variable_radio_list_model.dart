class DSVariableRadioListModel {
  String? text;
  int? id;

  DSVariableRadioListModel({this.text, this.id});

  DSVariableRadioListModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['id'] = this.id;
    return data;
  }
}
