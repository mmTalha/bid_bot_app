import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/login_register_screens/login_screen.dart';
import 'package:untitled2/main.dart';
import 'package:untitled2/onboarding_screens/onboarding_class.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          // decoration: BoxDecoration(
          //     image: new DecorationImage(
          //   image: NetworkImage(
          //       'https://i.postimg.cc/P5YtfS9h/Online-Groceries-cuate.png'),
          //   fit: BoxFit.cover,
          // )
          //     // gradient: LinearGradient(
          //     //     colors: [Color(0xffE5FDF3), Color(0xffBEFBF7)],
          //     //     begin: Alignment.topLeft,
          //     //     end: Alignment.centerRight),
          //     ),
          child: PageView.builder(
              controller: _controller,
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    Container(
                      child: Image.asset(
                        details[index].imgUrl,
                        fit: BoxFit.cover,
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                details[index].title,
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 21),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                details[index].desc,
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade500),
                              ),
                              SizedBox(
                                height: 120,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: List.generate(
                                        3,
                                        (index) => Container(
                                              height: 5,
                                              width: currentIndex == index
                                                  ? 20
                                                  : 8,
                                              margin: EdgeInsets.only(right: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color.fromRGBO(
                                                      22, 29, 43, 10)),
                                            )),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  index == 2
                                      ? GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      login_screen()),
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // gradient: LinearGradient(
                                              //     colors: [
                                              //
                                              //       Color.fromRGBO(18, 119, 197, 1),
                                              //       Color. fromRGBO(22, 29, 43, 10) ,
                                              //
                                              //     ],
                                              //
                                              //   end: FractionalOffset.centerRight,),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color:
                                                  Color.fromRGBO(27, 3, 88, 1),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              child: Text(
                                                "Get started",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 19),
                                              ),
                                            ),
                                          ),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            _controller!.nextPage(
                                                duration:
                                                    Duration(milliseconds: 100),
                                                curve: Curves.bounceIn);
                                          },
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Skip",
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        27, 3, 88, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
        ),
      )),
    );
  }
}
