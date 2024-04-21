import 'package:flutter/material.dart';

class combopage extends StatefulWidget {
  const combopage({super.key});

  @override
  State<combopage> createState() => _combopageState();
}

class _combopageState extends State<combopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(children: [
SizedBox(height: 40,),
  Row(children: [
    SizedBox(width: 25,),
Text('salon App',
style: TextStyle(color:Colors.black,
fontSize: 20,fontWeight: FontWeight.bold,
),
),
SizedBox(width: 220,),
IconButton(onPressed: (){

},
 icon: Icon(Icons.shopping_cart,
  color: Colors.grey,
 ),
 
 ),

  ],),
  SizedBox(height: 25,),
  SingleChildScrollView(scrollDirection: Axis.horizontal,
   child: Row(children: [
    SizedBox(width: 25,),
    Container( height: 40,
    width: 150,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
    border: Border.all( color: Colors.black,
    
    )
    ),
 child:Align(
alignment: Alignment.center,
   child: Text('Facial',
   
   style: TextStyle(color: Colors.black,
    fontWeight: FontWeight.bold,
   ),
   ),
 ),
    
    ),
   ]),
  
  )
  
]),

    );
  }
}