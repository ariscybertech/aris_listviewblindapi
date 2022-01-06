import 'package:listview_bind_api/APIService.dart';
import 'package:listview_bind_api/AttendanceModel.dart';
import 'package:flutter/material.dart';
import 'package:listview_bind_api/AttendanceRepositories.dart';
import 'package:listview_bind_api/ResultModel.dart';


import 'AttendanceRepositories.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key key}) : super(key: key);
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}
class _AttendanceScreenState extends State<AttendanceScreen>{
  final String urlHost = 'http://172.20.10.10/';
  List<AttendanceModel> _attendance = <AttendanceModel>[];
  ResultModel oResult = ResultModel();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: _attendance.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_attendance[index].checkinday),
          leading: Container(
            margin: EdgeInsets.only(left: 6.0),
            child: Image.network(_attendance[index].photo.replaceAll("C:/inetpub/wwwroot/", urlHost), height: 50.0, fit: BoxFit.fill,)
          ),
          trailing: Text(_attendance[index].checkinstart),
          subtitle: Text(_attendance[index].checkinworked),
        );
      },
    );
  }

  void _getData() {
   
    APIWeb().load(AttendanceRepositories.getData).then((attendance) => {
      setState(() => {
        _attendance = attendance
      })
    });

  }
  
}

