import 'dart:convert';
import 'package:listview_bind_api/APIService.dart';

import 'package:listview_bind_api/AttendanceModel.dart';
import 'package:listview_bind_api/ResultModel.dart';

class AttendanceRepositories{
  final String urlHost = 'http://172.20.10.10/';
  
  static APIService<List<AttendanceModel>> get getData {
    return APIService(
      url:  'http://172.20.10.10/RELEASE-API/Api/attendance/getdata',
      parse: (response) {
        final parsed = json.decode(response.body); 
        final dataJson = ResultModel.fromJSON(parsed);
        return dataJson.responsedata.map((i) => AttendanceModel.fromJSON(i)).toList();
      }
    );
  }
}
