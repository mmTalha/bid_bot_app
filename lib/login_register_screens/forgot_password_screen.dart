import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/login_register_screens/otp_screen.dart';
import 'package:untitled2/login_register_screens/register_screen.dart';


class Forgot_password_screen extends StatelessWidget {
  const Forgot_password_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                      'image/backgroundlogin.png',
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Let us help you'
                        ,
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),
                    )),
                SizedBox(height: 5,),
                Container(

                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Reset Password',
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 172,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [

                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon:Icon(Icons.email ,size: 20,),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),


                      Center(
                        child: Container(
                          height:48,
                          width: 296,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(104, 119, 244, 1),
                            child: Text(
                              'Send Reset Password Confirmation',
                              style: TextStyle(

                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => otp_screens()),
                              );
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            )));
  }
}
