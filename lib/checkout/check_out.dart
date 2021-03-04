import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget{
  _CheckOut createState() => _CheckOut();
}
class _CheckOut extends State<CheckOut>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(
          iconTheme: IconThemeData(
              color: Color.fromRGBO(0,0,102, 1)
          ),
        title: Text("Checkout",style: TextStyle(
          color: Color.fromRGBO(0,0,102, 1)
        ),),
        backgroundColor: Colors.white
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 280,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 7.5),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  child: Text(
                                    "Item total",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Rs. 899/-",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0,0,102, 1),
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  child: Text(
                                    "Discount",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Rs. 199/-",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),



                        Container(
                          padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  child: Text(
                                    "Dilevery charges",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Rs. 0/-",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),




                        Container(
                          padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  child: Text(
                                    "CGST",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Rs. 0/-",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),



                        Container(
                          padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  child: Text(
                                    "SGST",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Rs. 0/-",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                          width: MediaQuery.of(context).size.width,
                          height: 2,
                          color: Colors.grey
                        ),


                        Container(
                          padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
                          child: Row(
                            children: [

                              Expanded(
                                child: Container(
                                  child: Text(
                                    "Total",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Rs. 700/-",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0,0,102, 1),
                                        fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                  getItemsList(),

                  getServiceOnTime(),

                  SizedBox(
                    height: 100,
                  ),


                ],
              ),
            ),

            getContainerForPrice()
          ],
        ),
      ),
    );
  }

  Widget getItemsList()
  {
    return Container(

      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Items",textAlign: TextAlign.start,style: TextStyle(color: Color.fromRGBO(0,0,102, 1),fontSize: 30,fontWeight: FontWeight.bold),),


          getListOfItems(),
          getListOfItems(),
          getListOfItems(),


        ],
      ),
    );
  }

  Widget getListOfItems()
  {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Color.fromRGBO(120,150, 240, 1)),
        color: Colors.white,

      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        child: Text("Car Washing",style: TextStyle(
                            color: Color.fromRGBO(102,0,0, 102),
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        alignment: Alignment.centerLeft,

                        color: Colors.white,
                        child: Text("4.7 ratting",style: TextStyle(
                          color: Color.fromRGBO(122,150,240, 1),
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      height: 50,
                      width: 20,
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        onPressed: (){},
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                              color: Color.fromRGBO(122, 150, 240, 1)
                          ),
                        ),
                        color: Colors.white,
                        elevation: 5,
                      )
                  )
              ),
            ],
          ),

          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),

            alignment: Alignment.centerRight,
            child: Text(
              "Rs. 99/-",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),




        ],
      ),
    );
  }

  Widget getImages(var imageurl)
  {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
      height: 60,
      width: 120,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                imageurl
            ),
            fit: BoxFit.cover,
          )
      ),
    );
  }


  Widget getContainerForPrice()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0,0,102,1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 45,
                width: 45,
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 2.0)
                ),
                child: Text(
                  "1",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),

              Text(
                "Rs. 198/-",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      height: 50,
                      width: 20,
                      alignment: Alignment.centerRight,

                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CheckOut()),
                          );
                        },
                        child: Text(
                          "CHECK",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        color: Color.fromRGBO(0,0,102, 1),
                        elevation: 5,
                      )
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getServiceOnTime()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10,10,10,10),

          width: MediaQuery.of(context).size.width,
          child: Text("When would you like your service?",style: TextStyle(color: Color.fromRGBO(0,0,102, 1),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start,)
        ),

        Container(
          margin: EdgeInsets.fromLTRB(10,10,10,10),
          padding: EdgeInsets.fromLTRB(10,10,10,50),
          width: MediaQuery.of(context).size.width,

          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(122,150,240, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(child: Container(child: Text("Date",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),),padding: EdgeInsets.fromLTRB(20, 5, 10, 5),)),
                    Expanded(child: Container(alignment: Alignment.centerRight,child: Icon(Icons.date_range,size: 25,color: Colors.white,),padding: EdgeInsets.fromLTRB(20, 5, 20, 5),))
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                  padding: EdgeInsets.fromLTRB(2.5,10,10,10),

                  width: MediaQuery.of(context).size.width,
                  child: Text("Select Time",style: TextStyle(color: Color.fromRGBO(0,0,102, 1),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start,)
              ),

              SizedBox(height: 10,),


              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: [
                    getTime("5:00 PM - 5:30 PM"),
                    getTime("5:30 PM - 6:00 PM"),
                    getTime("6:00 PM - 6:30 PM"),
                    getTime("6:30 PM - 7:00 PM"),
                    getTime("7:00 PM - 7:30 PM"),
                    getTime("7:30 PM - 8:00 PM"),
                  ],
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }

  Widget getTime(var time)
  {
    return Container(

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[800])
      ),
      margin: EdgeInsets.all(2.5),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          time,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 18
          ),
        ),
      ),
    );

  }
}