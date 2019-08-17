import 'package:flutter/material.dart';
import 'package:mrt/Pages/StationSelect.dart';
import 'package:mrt/Widget/MrtListItem.dart';

class ExitSearch extends StatefulWidget {
  @override
  _ExitSearchState createState() => _ExitSearchState();
}

class _ExitSearchState extends State<ExitSearch> {
  List<TextAndColor> mrtLineList = [
    new TextAndColor('桃園捷運', Colors.purple),
    new TextAndColor('2', Colors.yellow),
  ];
  void onTapped(String station) {
    print(station);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StationSelect(lineName: station)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('請選擇路線'),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: mrtLineList.length,
          //列表项构造器
          itemBuilder: (BuildContext context, int index) {
            // return butt
            return ListTile(
              title: MrtListItem(
                color: mrtLineList[index].color,
                text: mrtLineList[index].text,
              ), //Text("${mrtStation[index]}"),
              onTap: () => onTapped(mrtLineList[index].text),
            );
          },
          //分割器构造器
          separatorBuilder: (BuildContext context, int index) {
            return divider1;
          },
        ),
      ),
    );
  }
}

class TextAndColor {
  TextAndColor(String text, Color color) {
    this.text = text;
    this.color = color;
  }
  String text;
  Color color;
}
