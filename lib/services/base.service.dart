import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:socialapp/models/base.model.dart';

import 'dart:developer';

class BaseService {
  // Base url for our application
  final String baseUrl  = "https://jsonplaceholder.typicode.com/";


  // Store token
  String? _token;

  static BaseService? _intance;
  static BaseService get instance => _intance ??= new BaseService();
  // When we call token property
  // String? get token => this._token;

  // Initial Call to Api, To take token
  // Future iniToken() async {
  //   // Call to Api
  //   if (BaseService.instance._token != null) return;
  //   log("resquest url:${baseUrl+"ClientApp/Authenticate"}");
  //   var data = convert.jsonEncode({
  //       "Username": username,
  //       "Password": password
  //     });
  //   log("resquest data:$data");
  //   var response = await http.post(Uri.parse(baseUrl+"ClientApp/Authenticate"),
  //     headers:{'Content-Type':'application/json'},
  //     // Converts value to a JSON string
  //     body: convert.jsonEncode({
  //       "Username": username,
  //       "Password": password
  //     })
  //   );
  //   if (response.statusCode == 200) 
  //   {
  //     // Parses the string and returns the resulting Json object
  //     var json = convert.jsonDecode(response.body);
  //     BaseService.instance._token = json["Token"];
  //     log('Request ok with value: ${BaseService.instance._token}.');
  //   } 
  //   else
  //   {
  //     log('result ended with error : ${response.statusCode}: ${response.body}');
  //   }
  // }

  Future<BaseModel> fetch(String route) async {
    // await iniToken();
    log('request url: ${baseUrl+route}');
    var response = await http.get(Uri.parse(baseUrl+route), headers: {
      // "Authorization": "Bearer "+ BaseService.instance._token!,
      'Content-Type':'application/json',
    },);
    
    //
    if (response.statusCode == 200) {
      var json = convert.jsonDecode(response.body);
      log('result ended with 200 : $json');
      return BaseModel(data: json, status: response.statusCode);
    }
    else {
      log('result ended with error : ${response.statusCode}: ${response.body}');
      var json = {"error": response.reasonPhrase, "body": response.body};
      return BaseModel(data: json, status: response.statusCode);
    }
  }

  // All api call with Post method, and return the data we want
  // Future<BaseModel> post(String route, Map data) async {
  //   await iniToken();
  //   var a = convert.jsonEncode(data);
  //   log('request : $a');
  //   log('request url: ${baseUrl+route}');
  //   var response = await http.post(
  //     Uri.parse(baseUrl+route),
  //     // Converts value to a JSON string
  //     body: convert.jsonEncode(data),
  //     headers: {
  //       "Authorization": "Bearer "+ BaseService.instance._token!,
  //       'Content-Type':'application/json'
  //     }
  //   );

  //   if (response.statusCode == 200) 
  //   {
  //     // Parses the string and returns the resulting Json object
  //     var json = convert.jsonDecode(response.body);
  //     log('result ended with 200 : $json');
  //     return BaseModel(data: json, status: response.statusCode);
  //   } else {
  //     log('result ended with error : ${response.statusCode}: ${response.body}');
  //     var json = {"error": response.body};
  //     return BaseModel(data: json, status: response.statusCode);
  //   }
  // }

  // All api call with Put method, and return the data we want
  // Future<BaseModel> put(String route, Map data) async {
  //   await iniToken();
  //   log('request url: ${baseUrl+route}');
  //   log('request token: ${BaseService.instance._token}');
  //   log('request : ${convert.jsonEncode(data)}');
  //   var response = await http.put(
  //     Uri.parse(baseUrl+route),
  //     body: convert.jsonEncode(data),
  //     headers: {
  //       "Authorization": "Bearer "+ BaseService.instance._token!,
  //       'Content-Type':'application/json'
  //     }
  //   );
  //   if (response.statusCode == 200)
  //   {
  //     var json = convert.jsonDecode(response.body);
  //     log('result ended with 200 : $json');
  //     return BaseModel(data: json, status: response.statusCode);
  //   } 
  //   else 
  //   {
  //     log('result ended with error : ${response.statusCode}: ${response.body}');
  //     try {
  //       var json = convert.jsonDecode(response.body);
  //       json = {"error": response.reasonPhrase};
  //       return BaseModel(data: json, status: response.statusCode);
  //     } catch (e) {
  //       return BaseModel(data: {}, status: response.statusCode);
  //     }
  //   }
  // }

  // All api call with Delete method, and return the data we want
  // Future<BaseModel> delete(String route, Map data) async {
  //   await iniToken();
  //   log('request url: ${baseUrl+route}');
  //   log('request : ${convert.jsonEncode(data)}');
  //   var response = await http.put(
  //     Uri.parse(baseUrl+route),
  //     // Converts value to a JSON string
  //     body: convert.jsonEncode(data),
  //     headers: {
  //       "Authorization": "Bearer "+ BaseService.instance._token!,
  //       'Content-Type':'application/json'
  //     }
  //   );
  //   if (response.statusCode == 200) 
  //   {
  //     var json = convert.jsonDecode(response.body);
  //     log('result ended with 200 : $json');
  //     return BaseModel(data: json, status: response.statusCode);
  //   } 
  //   else 
  //   {
  //     log('result ended with error : ${response.statusCode}: ${response.body}');
  //     var json = {"error": response.reasonPhrase};
  //     return BaseModel(data: json, status: response.statusCode);
  //   }
  // }

}