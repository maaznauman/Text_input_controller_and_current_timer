import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText=TextEditingController();
  var password=TextEditingController();

@override
  void initState() {
  update();
    // TODO: implement initState
    super.initState();
  }
  void update() {
    Timer.periodic(Duration(microseconds: 1), (timer) {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var time=DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.title),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      controller: emailText,

                      //enabled:false,
                      decoration: InputDecoration(
                        hintText: ('Enter your email'),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.deepOrange)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color:Colors.green,
                            width:2,

                          )
                        ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color:Colors.pink,
                              width: 2,
                            ),
                          ),
                        //suffix: Text("User Name"),

                        prefixIcon: Icon(Icons.email),
                        )


                         ),
                    Container(
                      height: 25,
                    ),
                    TextField(
                      controller: password,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: 'enter your password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.deepOrange)),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye,color: Colors.lightGreen,),
                          onPressed: (){

                          },

                      ),
                    ),
                    ),
                    ElevatedButton(onPressed: (){
                      String useremail=emailText.text.toString();
                      String userpass=password.text.toString();

                      print("email : $useremail , Password : $userpass");
                    }, child: const Text('Submit')),
                   Text('current date & time : $time'),
                    ElevatedButton(onPressed: (){
                      setState(() {
                      });
                    }, child:Text('Current Time')),

                    //date-picker calender


                  ],
                )),
          )),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
