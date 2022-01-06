class AttendanceModel {
  final int id;
  final String userid;
  final String username;
  final String checkinday;
  final String checkindate;
  final String checkinworked;
  final String checkinstart;
  final String checkinend;
  final String photo;

  AttendanceModel.fromJSON(Map<String, dynamic> jsonMap) :
    id = jsonMap['ID'],
    userid = jsonMap['UserID'],
    username = jsonMap['UserName'],
    checkinday = jsonMap['CheckInDay'],
    checkindate = jsonMap['CheckInDate'],
    checkinworked = jsonMap['CheckInWorked'],
    checkinstart = jsonMap['CheckInStart'],
    checkinend = jsonMap['CheckInEnd'],
    photo = jsonMap['Photo']; 
}