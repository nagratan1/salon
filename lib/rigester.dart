import 'package:flutter/material.dart';
import 'package:salon/Login.dart';
import 'package:salon/loginapi.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _namecontroller = TextEditingController();
TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();

//for loading 
bool isLoading= false;

//for messages box
bool isEmptyFileds = true;
//Dilaog Box for cancallation in account creation

 Widget _buildDialog(BuildContext context) {
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
    
    return AlertDialog(
      title: Text("message"),
      content: Text("${registerMessage?['message']}"),
      actions: <Widget>[
      TextButton(
        onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context) => MyLogin(),));  

          },
          child:
              Text('Close'),
           
          ),
        
      ],
    
 );
 });
}

//dialog box for sccessfully account create

Widget _buildAnotherdilaog(BuildContext context) {
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
    
    return AlertDialog(
      title: Text("message"),
      content: Text("${registerMessage?['message']}"),
      //content: Text('Registion Successfully Add'),
      actions: <Widget>[
         TextButton(
        onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context) => MyLogin(),));  

          },
          child:
              Text('Done'),
           
          ),
     
      ],
    
 );});
}



//validation for textfields
String emailErrorText = '';
String passowrdErrorText = '';
String nameErrorText = '';

//validation for email

String? validateEmail(String value){
  if(value.isEmpty){
return 'Email is required';
  }else{
        if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
return 'Enter valid email address';
  }else{
    return null;
  }}}

  //for password name
  String ? validationPassword(String value){
    if(value.isEmpty){
      return 'Password is required';
    }else{
      if(value.length <6){
        return 'Password is at least 6 characters';
      }
    }
    return null;
  }

String? validatename(String value){
if(value.isEmpty){
  return 'This field is required';
}else{
return null;
}
}

  @override
  Widget build(BuildContext context) {
    return Container(
decoration: BoxDecoration(
  image: DecorationImage(image: AssetImage('images/singup.jpg'),fit: BoxFit.cover),
),
child: Scaffold(
  backgroundColor: Colors.transparent,
  body: Stack(children: [
    Container(
      padding: EdgeInsets.only(left: 35,top: 130),
      child: Text('Create\nAccount',style: TextStyle(color: Colors.white,fontSize: 33),),
    ),
    SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 35,right: 35),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black),
                    controller: _namecontroller,
                    decoration: InputDecoration(fillColor: Colors.grey.shade100,
                    filled:true,
                    errorText: nameErrorText,
                    hintText:"Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                    )
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    style: TextStyle(),
                    //obscureText: true,
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      errorText: emailErrorText,
                      hintText: "Email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    style: TextStyle(),
                    obscureText: true,
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      errorText: passowrdErrorText,
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                 print(_emailcontroller.text);
                        if (_namecontroller.text==''|| _emailcontroller.text==''||_passwordcontroller.text==''){
                          print('email is add');
//                           getRegister(
//   _namecontroller.text, 
// _emailcontroller.text,
//  _passwordcontroller.text
//  );
                        }
                        else{
                          print('null');
                           getRegister(
  _namecontroller.text, 
_emailcontroller.text,
 _passwordcontroller.text
 );
       Future.delayed(Duration(seconds: 1), (){

if(isEmptyFileds){
// setState(() {
//   isEmptyFileds = true;
// });
  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildAnotherdilaog(context,);
                      }
   
            );
             
      }else{
         showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildDialog(context,);
                      }
         );
      }
      }
      );
  
             
            //  setState(() {
            //    emailErrorText= validateEmail(_emailcontroller.text)?? '';
            //    passowrdErrorText = validationPassword(_passwordcontroller.text)?? '';
            // nameErrorText = validatename(_namecontroller.text) ??'';
            //  });
             
             
             
             
             
              }
 
                      
                       






//       Future.delayed(Duration(seconds: 1), (){

// if(isEmptyFileds){
// // setState(() {
// //   isEmptyFileds = true;
// // });
//   showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return _buildAnotherdilaog(context,);
//                       }
   
//             );
             
//       }else{
//          showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return _buildDialog(context,);
//                       }
//          );
//       }
//       }
//       );
    
             
//              setState(() {
//                emailErrorText= validateEmail(_emailcontroller.text)?? '';
//                passowrdErrorText = validationPassword(_passwordcontroller.text)?? '';
//             nameErrorText = validatename(_namecontroller.text) ??'';
//              });
             
             
             
             
             
              },
                       child: 
                      Text('Sign Up',
                      
                      style: TextStyle(
                        fontSize: 27,fontWeight: FontWeight.w700
                      ),
                      )
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: 
                      (){
                       
                       Navigator.pushNamed(context, 'Login');
                      }, child: Text('Sign In',textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.underline,
                      color: Color(0xff4c505b),
                      fontSize: 18,
                      ),
                      ),
                      style: ButtonStyle(),
                      ),
                     
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
  ],),
),
    );
  }
}