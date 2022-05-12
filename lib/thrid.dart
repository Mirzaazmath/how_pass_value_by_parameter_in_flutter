import 'package:flutter/material.dart';
class page extends StatefulWidget {
  page(this.name,this.Email,this.phone, {Key? key}) : super(key: key);

  String name;
  String Email;
  String phone;
  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  TextEditingController name= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController phone= TextEditingController();



  bool dispimg=false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      name.text=widget.name;
      email.text=widget.Email;
      phone.text=widget.phone;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("DEMO APP"),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name",
                    label: Text("Name"),

                  )

              ),
              SizedBox(height: 20,),
              TextField(
                controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Email",
                    label: Text("Email"),

                  )

              ),
              SizedBox(height: 20,),
              TextField(
                controller: phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Number",
                    label: Text("Mobile no:"),

                  )

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

                width: double.infinity,
                child:Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height:50,
                          width: 50,
                          child:Image.asset("Assets/123.jpg"),
                        ),
                        Container(
                          height:50,
                          width: 50,
                          child:Image.asset("Assets/212.jpg"),
                        ),



                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height:50,
                          width: 50,
                          child:Image.asset("Assets/641968.jpg"),
                        ),
                        Container(
                          height:50,
                          width: 50,
                          child:Image.asset("Assets/123.jpg"),
                        ),



                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height:50,
                          width: 50,
                          child:Image.asset("Assets/212.jpg"),
                        ),
                        Container(
                          height:50,
                          width: 50,
                          child:Image.asset("Assets/641968.jpg"),
                        ),



                      ],
                    )
                  ],

                ),
              )
                  : SizedBox(height: 50,),
              FlatButton(onPressed:  (){

              }, child:  Text("save"),)
            ],
          ),
        ),
      ),
    );
  }
}