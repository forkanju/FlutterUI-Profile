import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350.0,
            left: 25.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: [
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://a.ltrbxd.com/resized/sm/upload/8t/7j/ae/lx/hugo-1200-1200-675-675-crop-000000.jpg?k=48537417e1'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7.0,
                            color: Colors.black,
                          )
                        ])),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  'Hugo Cabret',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Subscribe guys',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 25.0,),
                Container(
                  height: 30.0,
                  width: 95.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Center(
                        child: Text('Edit Name', style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0,),


                Container(
                  height: 30.0,
                  width: 95.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Center(
                        child: Text('Logout', style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 35.0,),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('1253', style: TextStyle(fontSize: 20, fontFamily: 'Montserrat', fontWeight: FontWeight.bold),),
                          Text('FOLLOWERS', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat', color: Colors.black45),),
                        ]
                      ),
                      Column(
                        children: [
                          Text('563', style: TextStyle(fontSize: 20, fontFamily: 'Montserrat', fontWeight: FontWeight.bold),),
                          Text('FOLLOWING', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat', color: Colors.black45),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('256', style: TextStyle(fontSize: 20, fontFamily: 'Montserrat', fontWeight: FontWeight.bold),),
                          Text('WORKS', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat',color: Colors.black45 ),),
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width + 135, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
