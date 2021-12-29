 import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled2/user_details_notification_screens/Account_details_screen.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/profile.png'), fit: BoxFit.cover),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Account_details_screen()),
                        );
                      },
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Center(
                    child: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(231, 233, 253, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset('image/profilepic.png'),
                    ),
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Steve Arnold ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                    child: Text(
                  '031323748756',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height:400 ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(20)  ,
                     topRight:Radius.circular(20) ,

                   )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                         decoration: BoxDecoration(
                           image: DecorationImage(image:  AssetImage( 'image/banner_wins.png')),

                         ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Total wins ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                  child: Text(
                                    '12',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  )),
                            ],
                          ),
                          ),
                      ),

                      ListTile(
                        title: Text( 'Terms and Conditions',style: TextStyle(color: Color.fromRGBO(57, 74, 109, 1,),fontSize: 14,fontWeight: FontWeight.w400),),
                        trailing:Icon(Icons.arrow_forward_ios_outlined) ,
                      ),
                      ListTile(
                        title: Text( 'Help Center',style: TextStyle(color: Color.fromRGBO(57, 74, 109, 1,),fontSize: 14,fontWeight: FontWeight.w400),),
                        trailing:Icon(Icons.arrow_forward_ios_outlined) ,
                      ),
                      ListTile(
                        title: Text( 'Logout',style: TextStyle(color: Color.fromRGBO(244, 104, 129, 1),fontSize: 14,fontWeight: FontWeight.w400),),

                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
