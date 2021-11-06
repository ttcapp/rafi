import 'package:flutter/material.dart';
import 'package:rafi/demo_page.dart';
import 'package:rafi/list_page.dart';
import 'package:rafi/log_in.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:rafi/second_page.dart';


void main() {
  runApp(AmarApp());
}

String btnText1="Tap Button";
Color btnColor1= Colors.white;
bool imgVisibility= false;
String img1Src="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";
double imgHeight=200;
double imgWidth=250;
double conHeith=50;
double conWidth=50;

class AmarApp extends StatelessWidget {
   AmarApp({Key? key}) : super(key: key);

  final navigatorKey=GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        offsetFromRight: 180,
        backgroundColor: Colors.black87,
        duration: Duration(microseconds: 50000),
        headDrawer: Container(
          height: 150,
          child: Image.network("https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819__340.jpg"),),
        items: [
          MenuItem('Home',
              icon: Icons.home,
              onTap: (){}),
          MenuItem('Demo page',
              icon: Icons.mode,
              onTap: (){
                navigatorKey.currentState!.push(
                    MaterialPageRoute(builder: (context)=>ListPage()));
              }),
          MenuItem('Favourite',
              icon: Icons.label,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.access_time,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.settings,
              onTap: (){}),
        ],
        child: MyHomePage(),

      )
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Rafi"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>DemoPage()));
                  },
                  child: Text("Go To Sign In")),
            
              InkWell(
                onTap: (){
                  setState(() {
                    conHeith=150;
                    conWidth=150;
                  });
                },
                onDoubleTap: (){
                  setState(() {
                    conHeith=150;
                    conWidth=150;
                  });
                },
                child: AnimatedContainer(
                  height:conHeith ,
                  width:conWidth ,
                  color: Colors.purple,
                  duration: Duration(microseconds: 4000),
                ),
              ),


              RaisedButton(
                child: Text("Go to next page"),
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context)=>Login()));
              }),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: RaisedButton(
                    color: btnColor1,
                    child: Text(btnText1,style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontSize: 30),),
                    onPressed: (){
                      setState(() {
                        btnText1="Button Pressed";
                        btnColor1=Colors.orange;
                        imgVisibility=true;
                      });
                    }),
              ),
              Visibility(
                  visible: imgVisibility,
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                             border: Border.all(
                               color: Colors.tealAccent,
                               width: 5
                             )
                            ),

                            height: imgHeight,
                              width: imgWidth,
                              child: Image.network(img1Src,
                                fit: BoxFit.cover,)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 5
                                  )
                              ),

                              height: imgHeight,
                              width: imgWidth,
                              child: Image.network(img1Src,
                                fit: BoxFit.cover,)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 5
                                  )
                              ),

                              height: imgHeight,
                              width: imgWidth,
                              child: Image.network(img1Src,
                                fit: BoxFit.cover,)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 5
                                  )
                              ),

                              height: imgHeight,
                              width: imgWidth,
                              child: Image.network(img1Src,
                                fit: BoxFit.cover,)
                          ),
                        ),
                      ],
                    ),
                  )
              ),



            ],
          ),
        ),
      ),
    );
  }
}

