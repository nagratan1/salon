import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http ;



Map<String, dynamic> ?registerMessage;

Future<Map<String,dynamic>> getRegister(String name,String email,String password )async{
try{
var response = await http.post(
  Uri.parse(
        'https://salon.indiantechart.com/apisecure/register',
        ),
   body: {
'name':name,
'email':email,
'password':password,
'type':'1',
  }
  );
var result = json.decode(response.body);
print(response.body);
String data=result['access_token'];
print(data);
registerMessage = result;
return registerMessage!;
}catch(error){
  print(error);
  rethrow;
}
}




// Future<void> getlogin(email,password)async{
// try{
//  // print('all    ${email}  ${password}  ');
// var response = await http.post(
//   Uri.parse(
//         'https://salon.indiantechart.com/apisecure/login',
//         ),
 
//   body: {

// 'email':email,
// 'password':password,
// 'type':'1',
//   }
//   );
// var result = json.decode(response.body);

// print(' ${response.statusCode} ${response.body}');


// if(response.statusCode==200){

//     Get.defaultDialog(content:Column(
//       children: [
//         Text('login done'),
//         ElevatedButton(onPressed: (){}, child: Text('ratan'))
//       ],
//     ),
  
    
//      );
 


// }
// else{

//   Get.showSnackbar(GetSnackBar(message: '${result}',));
// }
// }
// catch(error){
//   print(error);
//   rethrow;
// }
// }
Future< String> loginapi(email,password)async{
  try{

    var response=   await http.post(
   Uri.parse(
        'https://salon.indiantechart.com/apisecure/login',
        ),
    body: {
      'email':email,
      'password':password
    }
    );




    print('${response.statusCode}  + ${response.body}');
    var staetcode=response.statusCode.toString();
    return staetcode;


  }catch(e){
    print(e);
    throw Exception();

  }

}
List<dynamic> categoryList=[];
Future<List<dynamic>> getcategoryList()async{
try{

var response = await http.get(Uri.parse(
  'https://salon.bestscreentechnology.com/apisecure/get-services-category',
  ),
headers: {
  'Authorization':'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjEwNCwibmFtZSI6IlNoeWFtIFlhZGF2IiwiZW1haWwiOiJhc2h1dHNqOTkud2llQGdtYWlsLmNvbSIsIkFQSV9USU1FIjoxNjk0NTI4MjM2fQ.fyR3Z2XNu2eY1EmgRHLZlmRur1XzjXFIDDCB-c8NZUo'
}
);
var result  = json.decode(response.body);
print(response.body);
categoryList = result['category'];
print(categoryList);
return categoryList;
}catch(error){
  print(error);
  rethrow;
}

}