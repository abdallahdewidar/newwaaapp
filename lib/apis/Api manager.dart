import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Modle/sourses model/Soursesrsponse.dart';
 class Apimanager{
  static const String baseurl='newsapi.org';
  static const String apikey="78c8c48082cb4f8bbab8878260c5cfa6";
  ///v2/top-headlines/sources?
  static Future<Soursesrsponse> getsourses( String catgoryid) async{
   Uri soursesapiurl = Uri.https( baseurl,'v2/top-headlines/sources?', {
    'apikey': apikey,
"category":catgoryid
   });
   http.Response response = await http.get(soursesapiurl);
 Map<String,dynamic>josn=  jsonDecode(response.body);
 Soursesrsponse soursesrponse=Soursesrsponse.fromJson(json);
 return soursesrponse;
  }
}