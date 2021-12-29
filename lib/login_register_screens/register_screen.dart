import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/login_register_screens/forgot_password_screen.dart';



class register_screen extends StatelessWidget {
  const register_screen({Key? key}) : super(key: key);

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
                      'Let’s join to our'
                         ,
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),
                    )),
                SizedBox(height: 5,),
                Container(

                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'BidBot Community',
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 472,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(

                          cursorColor: Colors.grey,
                          decoration: InputDecoration(

                            border: UnderlineInputBorder(),
                            hintText: 'Fullname',
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
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Phone number',
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon:Icon(Icons.phone,size: 20,),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Email',
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon:Icon(Icons.email_outlined,size: 20,),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Password',
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon:Icon(Icons.lock,size: 20,),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                             hintText: 'Confirm password',
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIcon:Icon(Icons.lock,size: 20,),
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
                              text: " Sign In"
                                 ,
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
                                        builder: (context) => Forgot_password_screen()),
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
