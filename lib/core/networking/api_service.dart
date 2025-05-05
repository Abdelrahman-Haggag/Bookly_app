import 'package:dio/dio.dart';

class Apiservices{
 final  Dio dio ;
 final String baseUrl ="https://www.googleapis.com/books/";

  Apiservices(this.dio);
  get({required String endpoint})async{
    var response = await dio.get("$baseUrl$endpoint");
    return response.data;
  }
}