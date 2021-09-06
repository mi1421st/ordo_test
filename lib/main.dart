import 'package:flutter/material.dart';
import 'package:ordo_test/test_1/page_one.dart';
import 'package:ordo_test/test_2/page_two.dart';
import 'package:ordo_test/test_3/page_three.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Made By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Michael Kristianus',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  print("test 1 pressed");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageOne()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.black87)
                ),
                child: Container(
                  width: width * 0.7,
                  height: 60,
                    child: Center(
                      child: Text("Test 1"),
                    )
                )
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print("test 2 pressed");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.black87)
                ),
                child: Container(
                  width: width * 0.7,
                  height: 60,
                    child: Center(
                      child: Text("Test 2"),
                    )
                )
            ),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree()));
                  print("test 3 pressed");
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.black87)
                ),
                child: Container(
                  width: width * 0.7,
                  height: 60,
                    child: Center(
                      child: Text("Test 3"),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
