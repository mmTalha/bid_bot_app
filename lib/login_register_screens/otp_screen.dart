import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled2/login_register_screens/re_create_your_password.dart';
import 'package:untitled2/login_register_screens/register_screen.dart';



class otp_screens extends StatelessWidget {
  const otp_screens({Key? key}) : super(key: key);

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
                  height: 232,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [

                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: PinCodeTextField(
                          // controller:otpfield123  ,
                          length: 4,
                          obscureText: false,
                          animationType: AnimationType.fade,

                          pinTheme: PinTheme(
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            selectedColor: Colors.white,
                            disabledColor: Colors.white,
                            selectedFillColor: Colors.white,
                            inactiveFillColor: Color.fromRGBO(231, 233, 253, 1),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: true,

                          // onCompleted: (v) {
                          //   print("Completed");
                          //   value=v;
                          // },
                          // onChanged: (value) {
                          //   print(value);
                          //   setState(() {
                          //     currenttext = value;
                          //   });
                          // },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");

                            return true;
                          },
                          appContext: context,
                          onChanged: (String value) {},
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
                              'Verify Code',
                              style: TextStyle(

                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => re_create_your_password_screen()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Didn't receive the code?",
                                style: TextStyle(color: Colors.grey, fontSize: 12)),
                            TextSpan(
                              text: " Resend",
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
                                        builder: (context) => re_create_your_password_screen()),
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
