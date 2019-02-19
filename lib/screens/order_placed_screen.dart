import 'package:flutter/material.dart';
import 'orders_screen.dart';

import 'home_screen.dart';

class OrderPlacedScreen extends StatefulWidget{

  final int total;
  final List<String> cartList;
  final String orderId;
  var date;
  var time;
  final String pincode;
  final String flat;
  final String colony;
  final String city;

  OrderPlacedScreen(this.total,
  this.cartList,
  this.orderId,
  this.date,
  this.time,
  this.pincode,
  this.flat,
  this.colony,
  this.city);

  @override
  _OrderPlacedScreenState createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen>{

  static String _statusText = "Processing...";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen())
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Booking confirmed"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.orangeAccent,
                height: MediaQuery.of(context).size.height * 0.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "GREAT!",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8.0)),
                      Text(
                        "Your booking has been confirmed.",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        "We'll reach out to you shortly with your booking.",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Booking details",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Booking number",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              widget.orderId,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Amount",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              "₹ " + widget.total.toString(),
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Appointment Date",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              widget.date.day.toString() + "-" +
                                  widget.date.month.toString() + "-" +
                                  widget.date.year.toString(),
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Appointment time",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text(
                              widget.time.hour.toString() + ":" +
                                  widget.time.minute.toString() + "0",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0 , right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Status",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          "Booked",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.green,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => OrdersScreen()),
                          );
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        color: Color(0xff073848),
                        elevation: 0.0,
                        textColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32.0, 12.0, 32.0, 12.0),
                          child: Text(
                            "View Orders",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen())
                          ),
                          child: Text(
                            "Go to home",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}