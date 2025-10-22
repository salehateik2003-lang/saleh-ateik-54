
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MohamedApp(),
    );
  }
}

class MohamedApp extends StatefulWidget{
  const MohamedApp({super.key});

  @override
  State<MohamedApp> createState() => MohamedAppState();
}

class MohamedAppState extends State<MohamedApp>{

  String send = "";
  int counts = 0;
  int count1  = 0;
  int count2  = 0;
  int count3  = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("السبحة الألكترونية"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Column(children: [

        SizedBox(height: 250,),

        Text(send),
        Text("$counts"),

        Row(children: [
          ElevatedButton(onPressed: (){
            setState(() {
              send = "الله أكبر";
              counts = ++count1;
            });
          }, child: Text("الله أكبر")),

          SizedBox(width: 20,),

          ElevatedButton(onPressed: (){
            setState(() {
              send = "الحمد لله";
              counts = ++count2;
            });
          }, child: Text("الحمد لله")),

          SizedBox(width: 20,),

          ElevatedButton(onPressed: (){
            setState(() {
              send = "سبحان الله";
              counts = ++count3;
            });
          }, child: Text("سبحان الله")),
        ],)
      ],),
      backgroundColor: Colors.blue,
    );
  }
}
