import 'package:http/http.dart' as http;

class APIService<T> {
  final String url;// = urlHost + 'RELEASE-API/Api/attendance/getdata';
  T Function(http.Response response) parse;

  APIService({this.url, this.parse});  
}

class APIWeb{
  Future<T> load<T>(APIService<T> resource) async {

      final response = await http.get(resource.url);
      if(response.statusCode == 200) {
        return resource.parse(response);
      } else {
        throw Exception('Failed to load data!');
      }
  }
}