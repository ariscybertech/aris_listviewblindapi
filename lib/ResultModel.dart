class ResultModel
{
    final String responsecode;
    final String responsemessage ;
    final List responsedata ;

    ResultModel({
      this.responsecode,
      this.responsemessage,
      this.responsedata
    });

    factory ResultModel.fromJSON(Map<String, dynamic> jsonMap) 
    {
      var list = jsonMap['ResponseData'] as List;

      final data = ResultModel( 
        responsecode: jsonMap["ResponseCode"],
        responsemessage: jsonMap["ResponseMessage"],
        responsedata: list);
      return data;
    }

}




