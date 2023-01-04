import 'package:flutter/material.dart';

import 'listofcontainers.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value=0;
  int value2=0;
  int num=0;
  int num2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title:const  Text("Neon Containers",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width:340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,

              ),

              child: Row(
                children: [
                  Listcontainers().list1[num]

                ],
              ),

            ),
            Row(
              children: [


                GestureDetector(
                  onTap: (){
                    if(value==0){

                    }else{

                      setState(() {
                        num=   num-1;
                        value =   value-20;

                      });
                    }
                  },
                  child: const CircleAvatar(radius: 30,
                    child: Icon(Icons.remove,),),
                ),
                Expanded(child: Center(child: Text("$value%",style:const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),
                GestureDetector(
                  onTap: (){
                    if(value==100){

                    }else{
                      setState(() {
                        num=   num+1;
                        value =  value+20;
                      });
                    }
                  },
                  child:const  CircleAvatar(radius: 30,
                    child: Icon(Icons.add,)
                    ,),
                )

              ],
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,

              ),
              child: Row(
                children: [
                  Listcontainers().list2[num2]
                ],
              ),

            ),
            Row(
              children: [


                GestureDetector(
                  onTap: (){
                    if(value2==0){

                    }else{

                      setState(() {
                        num2=   num2-1;
                        value2 =   value2-20;

                      });
                    }
                  },
                  child: const CircleAvatar(radius: 30,
                    child: Icon(Icons.remove,),),
                ),
                Expanded(child: Center(child: Text("$value2%",style:const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),
                GestureDetector(
                  onTap: (){
                    if(value2==100){

                    }else{
                      setState(() {
                        num2=   num2+1;
                        value2 =  value2+20;
                      });
                    }
                  },
                  child:const  CircleAvatar(radius: 30,
                    child: Icon(Icons.add,)
                    ,),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }


}
