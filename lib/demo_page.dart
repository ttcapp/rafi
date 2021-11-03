
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.supervised_user_circle),
            SizedBox(width: 5,),
            Text("Demo Page"),

          ],
        ),
      ),
      body: Container(
        color: Colors.black54,
        child: Center(
          child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage ("assets/images/img1.png")
                  ),
                  borderRadius: BorderRadius.circular(200),
                border: Border.all(color: Colors.black,width: 5)
              ),
            ),
            Text("Hello Mam",textAlign: TextAlign.center,style: TextStyle(
              color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold
            ),),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage ("assets/images/img1.png")
                  ),
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(color: Colors.black,width: 5)
              ),
            ),
            Text("How are you Mam?",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold
            ),),
          ],
          ),
        ),
      ),

    );
  }
}
