import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/login_register_screens/register_screen.dart';

class login_screen extends StatelessWidget {
  const login_screen({Key? key}) : super(key: key);

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
                      'login to Start',
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),
                    )),
                SizedBox(height: 5,),
                Container(

                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Bidding',
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(

                          validator: (value) {
                            if (value!.isEmpty) {
                              return "* Required";
                            } else
                              return null;
                          },
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            hintText: 'Email',

                            border: UnderlineInputBorder(),
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon: Icon(Icons.person,size: 20,),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "* Required";
                            } else
                              return null;
                          },
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: UnderlineInputBorder(),
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon:Icon(Icons.lock,size: 20,),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              padding: const EdgeInsets.only(right: 35 / 1),
                              child: InkWell(
                                onTap: () {

                                },
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(136, 142, 158, 1),
                                  ),
                                ),
                              ))),
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
                              'Sign In',
                              style: TextStyle(

                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {

                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Don’t have an account?",
                                style: TextStyle(color: Colors.grey, fontSize: 12)),
                            TextSpan(
                              text: " Sign Up",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(57, 74, 109, 1),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => register_screen()),
                                  );
                                },
                            ),
                          ])),
                    ],
                  ),
                ),


              ],
            )));
  }
}
