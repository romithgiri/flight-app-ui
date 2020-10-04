import 'package:flight_app_ui/utils/color_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils/ConfigFile.dart' as cf;

class BoardingPass extends StatefulWidget {
  @override
  _BoardingPassState createState() => _BoardingPassState();
}

class _BoardingPassState extends State<BoardingPass> {
  @override
  Widget build(BuildContext context) {
    cf.Size.init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          color: blackCustom,
          child: Column(
            children: [
              SizedBox(height: cf.Size.screenHeight/50,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      //here will be function call
                      Navigator.pop(context,true);
                    },
                    child: Image.asset(
                      "assets/images/back.png",
                      width: cf.Size.screenWidth/15,
                      height: cf.Size.screenHeight/35,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Text(
                    "Boarding pass",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: cf.Size.blockSizeHorizontal * 6,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: cf.Size.screenWidth,
                height: cf.Size.screenHeight/1.75,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        indicatorUI("BOM", "14:00", "Oct 10"),
                        Container(
                          height: cf.Size.screenHeight/8,
                          width: cf.Size.screenWidth/5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: cf.Size.screenWidth/8,
                                height: cf.Size.screenWidth/8,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey[300])
                                ),
                                child: Image.asset(
                                  "assets/images/flight_black.png",
                                ),
                              ),
                              Text(
                                "RK 210",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: cf.Size.blockSizeHorizontal * 4,
                                  color: textGreyClr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        indicatorUI("BLR", "19:30", "Oct 10"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: cf.Size.screenHeight/8,
                      width: cf.Size.screenWidth/1.2,
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey[300], ),
                        color: Colors.white12,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Passenger",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: cf.Size.blockSizeHorizontal * 4.5,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[400]
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Rohit Giri",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: cf.Size.blockSizeHorizontal * 5,
                                fontWeight: FontWeight.bold,
                                color: blackCustom
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: cf.Size.screenHeight/8,
                        width: cf.Size.screenWidth/1.2,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[300], ),
                          color: Colors.white12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            entryInfo("Terminal", "1"),
                            entryInfo("Gate", "A04"),
                            entryInfo("Seat", "4F"),
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: cf.Size.screenWidth,
                height: cf.Size.screenHeight/3.8,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)
                    ),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/qr_code.png",
                      width: cf.Size.screenWidth/3,
                      height: cf.Size.screenWidth/3,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget entryInfo(titleVar, valueVar){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleVar,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: cf.Size.blockSizeHorizontal * 4.5,
              fontWeight: FontWeight.w300,
              color: Colors.grey[400]
          ),
        ),
        SizedBox(height: 5,),
        Text(
          valueVar,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: cf.Size.blockSizeHorizontal * 5,
              fontWeight: FontWeight.w400,
              color: blackCustom
          ),
        ),
      ],
    );
  }

  Widget indicatorUI(cityVar, timeVar, dateVal){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cityVar,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: cf.Size.blockSizeHorizontal * 6.5,
              color: blackCustom,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          timeVar,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: cf.Size.blockSizeHorizontal * 5,
            color: blackCustom,
          ),
        ),
        Text(
          dateVal,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: cf.Size.blockSizeHorizontal * 4.5,
            color: textGreyClr,
          ),
        ),
      ],
    );
  }
}
