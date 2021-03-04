import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Profile extends StatefulWidget
{
  _Profile createState() => _Profile();
}
class _Profile extends State<Profile>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.white
          ),),
        backgroundColor: Color.fromRGBO(52, 73, 94, 1),

        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Form(
                    child: Column(children: [
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          return null;
                        },

                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)
                          ),
                          labelText: "Enter Name",
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(52, 73, 94, 1),
                            fontSize: 20
                          ),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color.fromRGBO(52, 73, 94, 1))
                          ),
                        ),
                      ),

                      SizedBox(height: 15,),

                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }

                          return null;
                        },

                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)
                          ),
                          labelText: "Enter main id",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(52, 73, 94, 1),
                              fontSize: 20
                          ),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color.fromRGBO(52, 73, 94, 1))
                          ),
                        ),
                      ),


                    ],),
                  ),
                )

              ],
            ),

            getContainerForPrice()
          ],
        ),
      ),
    );
  }

  Widget getContainerForPrice()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: RaisedButton(
            onPressed: (){
              //pushData();

            },
            color: Color.fromRGBO(70, 89, 108, 1),
            child: Text("UPDATE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
      ],
    );
  }
}