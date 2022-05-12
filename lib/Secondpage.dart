import 'package:basicapp/thrid.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Secondpage extends StatefulWidget {
   Secondpage(this.name,this.email,this.phone, {Key? key}) : super(key: key);

  String name;
  String email;
  String phone;
  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20),
              child:    CarouselSlider(
                options: CarouselOptions(height: 200.0),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber
                          ),
                          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              ),
              ),

              Text(widget.name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Text(widget.phone,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Text(widget.email,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

         FloatingActionButton(

          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page(widget.name,widget.email,widget.phone)),


    );
          },
        ),


            ],
          ),
        ),

      )
    );
  }
}
