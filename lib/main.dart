import 'package:flutter/material.dart';

import 'Secondpage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController name= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController phone= TextEditingController();

  bool dispimg=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      appBar: AppBar(
        title: Text("DEMO APP"),
        
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child:    TextField(
                        controller: name,
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: "Enter Name",
                          label: Text("Name",style: TextStyle(color: Colors.deepOrange),),

                        )

                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child:    TextField(
                        controller: email,
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: "Enter Email",
                          label: Text("Email",style: TextStyle(color: Colors.deepOrange),),

                        )

                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child:    TextField(
                        controller: phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: "Enter Nnmber",
                          label: Text("Mobile",style: TextStyle(color: Colors.deepOrange),),

                        )

                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              FlatButton(
                  color: Colors.orange,
                  onPressed: (){
                setState(() {
                  dispimg=true;
                });
              }, child: Text("Upload image")),
              SizedBox(height: 20,),
              dispimg?
              Container(


                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                       Stack(
                         children: [
                           Container(
                             height:100,
                             width: 100,
                             child:Image.asset("Assets/123.jpg"),
                           ),
                           Positioned(

                               child: Icon(Icons.cancel))
                         ],
                       ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              height:100,
                              width: 100,
                              child:Image.asset("Assets/123.jpg"),
                            ),
                            Positioned(

                                child: Icon(Icons.cancel))
                          ],
                        ),



                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height:100,
                              width: 100,
                              child:Image.asset("Assets/123.jpg"),
                            ),
                            Positioned(


                                child: Icon(Icons.cancel)
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              height:100,
                              width: 100,
                              child:Image.asset("Assets/123.jpg"),
                            ),
                            Positioned(

                                child: Icon(Icons.cancel))
                          ],
                        ),


                      ],
                    ),

                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height:100,
                              width: 100,
                              child:Image.asset("Assets/123.jpg"),
                            ),
                            Positioned(

                                child: Icon(Icons.cancel))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              height:100,
                              width: 100,
                              child:Image.asset("Assets/123.jpg"),
                            ),
                            Positioned(

                                child: Icon(Icons.cancel))
                          ],
                        ),



                      ],
                    )
                  ],
                  
                ),
              )
              : SizedBox(height: 100,),

              Padding(padding: EdgeInsets.all(50),

                child: Container(
                  height: 50,
                  width: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child:  FlatButton(

                    color: Colors.blue,
                    onPressed:  (){
                      secondScreenMethod();
                    }, child:  Text("save"),),
                )



              )

            ],
          ),
        ),
      ),
    );
  }
  secondScreenMethod() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  Secondpage(name.text,email.text,phone.text)),

    );
  }
}

