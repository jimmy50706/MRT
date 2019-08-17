import 'package:flutter/material.dart';
import 'package:mrt/Widget/MrtListItem.dart';

class StationSelect extends StatefulWidget {
  final String lineName;
  const StationSelect({Key key, this.lineName}) : super(key: key);

  @override
  _StationSelectState createState() => _StationSelectState();
}

class _StationSelectState extends State<StationSelect> {
  Widget divider1 = Divider(
    color: Colors.blue,
  );
  var lineDict = <String, List<StationInfo>>{
    '桃園捷運': [
      new StationInfo('A1', '台北車站'),
      new StationInfo('A2', '三重'),
      new StationInfo('A3', '新北產業園區'),
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('請選擇路線'),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: lineDict[widget.lineName].length,
          //列表项构造器
          itemBuilder: (BuildContext context, int index) {
            // return butt
            return ListTile(
              title: MrtListItem(
                color: Colors.black,
                text: lineDict[widget.lineName][index].stationName,
              ), //Text("${mrtStation[index]}"),
              onTap: null,
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

class StationInfo {
  StationInfo(String stationId, String stationName) {
    this.stationId = stationId;
    this.stationName = stationName;
  }
  String stationId;
  String stationName;
}
