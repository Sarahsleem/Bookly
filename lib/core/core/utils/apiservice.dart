import 'package:dio/dio.dart';

class ApiSercive{
  ApiSercive(this.dio);
  final _baseUrl='https://www.googleapis.com/books/v1/';
  final Dio dio;

  Future<Map<String,dynamic>> get({ required String endpoint})async{
   var response = await dio.get('$_baseUrl$endpoint');
   return response.data;
  }

}