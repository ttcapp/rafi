import 'package:flutter/material.dart';
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


class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideDrawer(
        offsetFromRight: 380,
        backgroundColor: Colors.black87,
        duration: Duration(microseconds: 5000),
        headDrawer: Container(
          height: 200,
          child: Image.network("data:image/jpeg;base64,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"),
        ),
        items: [
          MenuItem('Home',
              icon: Icons.home,
              onTap: (){}),
          MenuItem('Project',
              icon: Icons.mode,
              onTap: (){}),
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
      ),
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
              RaisedButton(
                child: Text("Go to next page"),
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context)=>SecondPage()));
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

