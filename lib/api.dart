import 'dart:convert';
import 'package:http/http.dart' as http;

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