import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('yfghu'),
      centerTitle: true,
      
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 80,left: 10),
        child: Column(
          children: [
            Container(
              height: 170,
              width: 600,
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.grey.shade100,),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width/3,
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Image.asset(''),
                  
                ),
                Container(
                 width: MediaQuery.of(context).size.width/1.8,
                 child: Padding(padding: EdgeInsets.only(left: 15,top:40,bottom: 35),
                 
                 child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('summer  Facial',style: TextStyle(fontSize: 20),),
                  Text('test'),
                  Row(
                    children: [
                      Text('999'),
                      SizedBox(width: 10,),
                      Text('Rs  2500'),

                      Spacer(),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.minus),
                            Text('01'),
                            Icon(CupertinoIcons.plus),
                          ],
                        ),

                                )
                        
                      
                    ],
                  )

                 ],),
                 ),
                )
              ],
            )
            
            ),
            SizedBox(height: 40,),
            
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 50,
                    width: 570,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.amber ),
                    //color: Colors.amber,
                    padding: EdgeInsets.only(left: 160,top:10),
                    child: Text("Continue",style:TextStyle(color: Colors.white,fontSize: 20,)),
                               
                  ),
                )
              ],
            )
          ],
        ),
        
      ),
    );

  }
}