import 'package:flutter/material.dart';

class Store_screen extends StatelessWidget {
  const Store_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/storebackgrond.png'),
                  fit: BoxFit.cover)),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text('Store',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 470,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment. start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 242, 245, 1),
                        ),
                        height: 64,
                        child: ListTile(
                          leading: GestureDetector(
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
                          title: Text(
                            'Wooden Key',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(57, 74, 109, 1)),
                          ),
                          subtitle: Text('2€', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(57, 74, 109, 1)),),
                          trailing: Container(
                            width: 64,
                            height: 36,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(231, 233, 253, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Buy',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(57, 74, 109, 1)),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 242, 245, 1),
                        ),
                        height: 64,
                        child: ListTile(
                          leading: GestureDetector(
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
                          title: Text(
                            'Wooden Key',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(57, 74, 109, 1)),
                          ),
                          subtitle: Text('2€', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(57, 74, 109, 1)),),
                          trailing: Container(
                            width: 64,
                            height: 36,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(231, 233, 253, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Buy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 74, 109, 1)),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                     Container(
                       decoration: BoxDecoration(
                         color: Color.fromRGBO(241, 242, 245, 1),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           SizedBox(
                             width: 200,
                             child: ListTile(
                               leading: GestureDetector(
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
                               title: Text(
                                 'Wooden Key',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12,
                                     color: Color.fromRGBO(57, 74, 109, 1)),
                               ),
                               subtitle:
                               Text('2€', style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 12,
                                   color: Color.fromRGBO(57, 74, 109, 1)),),

                             ),
                           ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                              Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(231, 233, 253, 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Icon(
                                    Icons.add ,
                                      color: Color.fromRGBO(57, 74, 109, 1),
                                  )
                              ),
                            ),
                             SizedBox(width: 5,),
                                Text('5', style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(57, 74, 109, 1)),),
                                SizedBox(width: 5,),
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(231, 233, 253, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Icon(
                                        Icons.add ,
                                        color: Color.fromRGBO(57, 74, 109, 1),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),

                         ],
                       ),
                     ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(241, 242, 245, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: ListTile(
                                leading: GestureDetector(
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
                                title: Text(
                                  'Wooden Key',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 74, 109, 1)),
                                ),
                                subtitle:
                                Text('2€', style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(57, 74, 109, 1)),),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(231, 233, 253, 1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Icon(
                                          Icons.add ,
                                          color: Color.fromRGBO(57, 74, 109, 1),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text('5', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 74, 109, 1)),),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(231, 233, 253, 1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Icon(
                                          Icons.add ,
                                          color: Color.fromRGBO(57, 74, 109, 1),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 45,),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        width:  MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(104, 119, 244, 1),

                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Container(

                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Go to Checkout',style: TextStyle(color: Colors.white),),
                              Text('Total : 120€',style: TextStyle(color: Colors.white),),
                            ],
                          )

                        ),

                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
