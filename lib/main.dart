import 'package:flight_app_ui/boarding_pass.dart';
import 'package:flight_app_ui/utils/color_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils/ConfigFile.dart' as cf;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cf.Size.init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: cf.Size.screenWidth,
          height: cf.Size.screenHeight,
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            children: [
              //for top ui i.e nav
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      //here will be function call
                    },
                    child: Image.asset(
                      "assets/images/menu.png",
                      width: cf.Size.screenWidth/15,
                      height: cf.Size.screenHeight/18,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      //here will be function call
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: blackCustom
                      ),
                      padding: EdgeInsets.all(10),
                      width: cf.Size.screenWidth/7.5,
                      height: cf.Size.screenHeight/14,
                      child: Image.asset(
                        "assets/images/ticket.png",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: cf.Size.screenHeight/35,),
              //for heading
              Container(
                width: cf.Size.screenWidth,
                alignment: Alignment.center,
                child: Text(
                  "Search flights",
                  style: TextStyle(
                    color: textBlackClr,
                    fontSize: cf.Size.blockSizeHorizontal*7
                  ),
                ),
              ),
              SizedBox(height: cf.Size.screenHeight/45,),
              //for search
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: cf.Size.screenWidth/1.8,
                    height: cf.Size.screenHeight/15,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0))
                    ),
                    child: Text(
                      "15 Sept - 20 Nov",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: cf.Size.blockSizeHorizontal * 4.5,
                          color: textGreyClr
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
                        color: blackCustom
                    ),
                    padding: EdgeInsets.all(10),
                    width: cf.Size.screenWidth/8.5,
                    height: cf.Size.screenHeight/15,
                    child: Image.asset(
                      "assets/images/calendar.png",
                    ),
                  ),
                ],
              ),
              SizedBox(height: cf.Size.screenHeight/22,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Where would you want to go?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: cf.Size.blockSizeHorizontal * 4.5,
                      color: textGreyClr
                  ),
                ),
              ),
              SizedBox(height: cf.Size.screenHeight/40,),
              Container(
                width: cf.Size.screenWidth/0.5,
                height: cf.Size.screenHeight/9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/flight_dept.png",
                      height: cf.Size.screenHeight/18,
                    ),
                    SizedBox(width: cf.Size.screenWidth/20,),
                    Text(
                      "Mumbai",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: cf.Size.blockSizeHorizontal * 7.5,
                          fontWeight: FontWeight.bold,
                          color: textBlackClr
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/down-arrow.png",
                      height: cf.Size.screenHeight/35,
                    ),
                  ],
                ),
              ),
              SizedBox(height: cf.Size.screenHeight/28,),
              Container(
                width: cf.Size.screenWidth/0.5,
                height: cf.Size.screenHeight/9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/flight_arrival.png",
                      height: cf.Size.screenHeight/18,
                    ),
                    SizedBox(width: cf.Size.screenWidth/20,),
                    Text(
                      "Bengaluru",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: cf.Size.blockSizeHorizontal * 7.5,
                          fontWeight: FontWeight.bold,
                          color: textBlackClr
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/down-arrow.png",
                      height: cf.Size.screenHeight/35,
                    ),
                  ],
                ),
              ),
              SizedBox(height: cf.Size.screenHeight/28,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cabin",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: cf.Size.blockSizeHorizontal * 4.5,
                      color: textGreyClr
                  ),
                ),
              ),
              SizedBox(height: cf.Size.screenHeight/40,),
              Container(
                child: Row(
                  children: [
                    cabinUi("Economy", blackCustom, Colors.white),
                    Spacer(),
                    cabinUi("Business", Colors.white12, Colors.grey),
                    Spacer(),
                    cabinUi("First Class", Colors.white12, Colors.grey),
                  ],
                ),
              ),
              SizedBox(height: cf.Size.screenHeight/20,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BoardingPass()),
                  );
                },
                child: Container(
                    height: cf.Size.screenHeight/11.5,
                    width: cf.Size.screenWidth/1.7,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: blackCustom,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Search Flight",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: cf.Size.blockSizeHorizontal * 4.5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 15,),
                        Image.asset(
                          "assets/images/flight_white.png",
                          height: cf.Size.screenHeight/20,
                        ),
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cabinUi(textVar, bgClr, textClr){
    return Container(
      height: cf.Size.screenHeight/12,
      width: cf.Size.screenWidth/3.8,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgClr,
      ),
      child: Text(
        textVar,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: cf.Size.blockSizeHorizontal * 4,
            fontWeight: FontWeight.bold,
            color: textClr
        ),
      ),
    );
  }
}