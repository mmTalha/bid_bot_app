import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/user_details_notification_screens/Account_details_screen.dart';
import 'package:untitled2/user_details_notification_screens/details_bid.dart';
import 'package:untitled2/user_details_notification_screens/notification_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,

      // appBar: AppBar(
      //
      //   backgroundColor: Colors.transparent, // 1
      //   elevation: 0, // 2
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Hi!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
      //       Text('Ready to bit today?',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
      //     ],
      //   ),
      //   actions: [
      //      Padding(
      //        padding: const EdgeInsets.all(8.0),
      //        child: new Container(
      //
      //            height: 36,
      //            width: 36,
      //        decoration: new BoxDecoration(
      //            color: Color.fromRGBO(255, 255, 255, 0.2)  ,
      //          borderRadius: BorderRadius. circular(20  ),
      //     ),
      //
      //                   child: Image.asset( 'image/wallet.png')),
      //      ) ,
      //
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: new Container(
      //
      //           height: 36,
      //           width: 36,
      //           decoration: new BoxDecoration(
      //             color: Color.fromRGBO(255, 255, 255, 0.2)  ,
      //             borderRadius: BorderRadius. circular(20  ),
      //           ),
      //
      //           child: Image.asset( 'image/notificationicon.png')),
      //     )
      //   ],
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('image/backgroundlogin.png'),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        'Ready to bit today?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                            height: 36,
                            width: 36,
                            decoration: new BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('image/wallet.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                            height: 36,
                            width: 36,
                            decoration: new BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            notification_screens()),
                                  );
                                },
                                child:
                                    Image.asset('image/notificationicon.png'))),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset('image/wooden.png'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Wooden',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                      Text('3x',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset('image/silver.png'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Silver',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                      Text('2x',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset('image/gold.png'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Gold',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                      Text('4x',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset('image/diamond.png'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Diamond',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                      Text('4x',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 160,
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pick your dream item’s',
                      style: TextStyle(
                          color: Color.fromRGBO(128, 142, 170, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '1 of 4',
                      style: TextStyle(
                          color: Color.fromRGBO(57, 74, 109, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 256,

                child: ListView.builder(


                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      details_bid_screen()),
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 256,

                            decoration: new BoxDecoration(
                                backgroundBlendMode: BlendMode.darken,
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromRGBO(166, 178, 191, 1),
                                image: new DecorationImage(
                                  image: AssetImage('image/wooddoor.png'),
                                  fit: BoxFit.cover,
                                ),
                                gradient: new LinearGradient(
                                    colors: [
                                      Color.fromRGBO(109, 99, 90, 1),
                                      Color.fromRGBO(109, 99, 90, 1),
                                    ],
                                    stops: [
                                      0.0,
                                      1.0
                                    ],
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    tileMode: TileMode.repeated)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text(
                                  'Wood Door',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.white),
                                )),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Container(
                                    width: 130,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('1h :'),
                                        Text('20m :'),
                                        Text('45s ')
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text(
                                  'Room booked',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.white),
                                )),
                                SizedBox(height: 30,),
                                Container(
                                  width: 150,
                                  child: ListTile(
                                    leading: Image.asset(
                                      'image/laptop.png',
                                      height: 48,
                                      width: 48,
                                    ),
                                    title: Text(
                                      'Start bid',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.white),
                                    ),
                                    subtitle:
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(child: Text('350€')),
                                    ),
                                  ),
                                ),
                                Center(
                                    child: Text(
                                  'iPhone Xs Max 256GB',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    '24 bidder enrolled',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
