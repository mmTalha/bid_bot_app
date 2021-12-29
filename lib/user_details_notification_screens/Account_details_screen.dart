

import 'package:flutter/material.dart';


class Account_details_screen extends StatefulWidget {
  const Account_details_screen({Key? key}) : super(key: key);

  @override
  _Account_details_screenState createState() => _Account_details_screenState();
}

class _Account_details_screenState extends State<Account_details_screen> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 242, 245, 1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width:45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(child: Icon( Icons.arrow_back_ios))),
              SizedBox(height: 15,),
              Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black),),
              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height:467 ,
                width: 328,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                       12

                    )
                ),
                child: Column(

                  children: [
                  SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 242, 245, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color.fromRGBO(85, 104, 114, 10)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),

                        Text(
                          'Personal info',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(85, 104, 114, 10)),
                        ),

                      ],
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Colors.grey,
                        primaryColorDark: Colors.grey,
                      ),
                      child: TextFormField(

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else
                            return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hoverColor: Colors.grey,

                          labelText:'Full name' ,
                          labelStyle: TextStyle(color: Colors.grey),
                          isDense: true,
                          border: UnderlineInputBorder(

                          ),
                          fillColor: Colors.grey,
                          focusColor: Colors.grey,
                         hintText: 'Full name',
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Colors.grey,
                        primaryColorDark: Colors.grey,
                      ),
                      child: TextFormField(

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else
                            return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hoverColor: Colors.grey,

                          labelText:'Email' ,
                          labelStyle: TextStyle(color: Colors.grey),
                          isDense: true,
                          border: UnderlineInputBorder(

                          ),
                          fillColor: Colors.grey,
                          focusColor: Colors.grey,
                          hintText: 'Email',
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Colors.grey,
                        primaryColorDark: Colors.grey,
                      ),
                      child: TextFormField(

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else
                            return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hoverColor: Colors.grey,

                          labelText:' Password' ,
                          labelStyle: TextStyle(color: Colors.grey),
                          isDense: true,
                          border: UnderlineInputBorder(

                          ),
                          fillColor: Colors.grey,
                          focusColor: Colors.grey,
                          hintText: 'Password',
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Colors.grey,
                        primaryColorDark: Colors.grey,
                      ),
                      child: TextFormField(

                        obscureText: _isObscure,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else
                            return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(

                          hoverColor: Colors.grey,
                          // suffixIcon: _isObscure?GestureDetector(
                          //   onTap: (){
                          //     setState(() {
                          //       _isObscure = !_isObscure;
                          //     });
                          //   },
                          //     child: Text('Show ')) :null ,



                          labelText:'Phone Number' ,
                          labelStyle: TextStyle(color: Colors.grey),
                          isDense: true,
                          border: UnderlineInputBorder(

                          ),
                          fillColor: Colors.grey,
                          focusColor: Colors.grey,
                          hintText: 'Phone Number',


                        ),
                      ),
                    ),
                    SizedBox(height: 45,),
                    Center(


                      child: Container(
                        height:48,
                        width: 296,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color.fromRGBO(104, 119, 244, 1),
                          child: Text(
                            'Save profile',
                            style: TextStyle(

                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
