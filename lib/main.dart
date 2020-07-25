import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anoop Jose',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Anoop Jose'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,


                runSpacing: 10,
                verticalDirection: VerticalDirection.down,

                children: [
                  Container(
                    height: 350,
                    width: 300,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("anoop.png"))
                    ),

                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width > 400)? MediaQuery.of(context).size.width/2 : MediaQuery.of(context).size.width,


                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Hello, ", style: TextStyle(color: Colors.blue, fontSize: 20, ),),
                          Text("I'm Anoop Jose.", style: TextStyle(color: Colors.white, fontSize: 20,),)
                        ],
                      ),
                      Text("FLUTTER DEVELOPER", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(
                        child: Text("I'm a mobile application developer with over 2 years of experience developing Mobile software. Whether you have the next great app idea or your business is struggling with an inefficient or error-prone process I will deliver a mobile solution tailored to your needs.",
                        style: TextStyle(color: Colors.grey[400]),
                          softWrap: true,


                        ),
                      ),

                    ],
                  )),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
