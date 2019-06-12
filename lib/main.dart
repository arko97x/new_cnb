import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
      // To remove the DEBUG banner from the top-right corner
      debugShowCheckedModeBanner: false,
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
  final key = new GlobalKey<ScaffoldState>();
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int r1 = 0, r2 = 0, r3 = 0, r4 = 0;

  int finalScore = 0;

  List<int> alreadyGuessed = [];
  int flag = 0, num = 0;

  @override
  void initState() {
    super.initState();
    arr.shuffle();
    r1 = arr[0];
    r2 = arr[1];
    r3 = arr[2];
    r4 = arr[3];
  }

  int currScore = 0;

  int n1 = 1;
  int n2 = 1;
  int n3 = 1;
  int n4 = 1;

  int b = 0, c = 0, i, j;

  var guesses = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Color(0xff20233e),
      // To center the whole damn thing
      body: new Center(
        child: new Column(
          // To center the widget vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Card Carousel
            CarouselSlider(
              height: MediaQuery.of(context).size.height * 0.8,
              items: <Widget>[
                // Landing Page Card
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: new BoxDecoration(
                    color: Color(0xff3a3f65),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    child: new Image(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.contain,
                      image: new AssetImage('graphics/ti4.png'),
                    ),
                  ),
                ),
                // Rules Card
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: new BoxDecoration(
                    color: Color(0xff3a3f65),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    // Padding for the text
                    child: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.05),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'Rules\n\n',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.069,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text:
                                  ' The app will randomly generate a 4 digit number ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: '. No digit is repeated in the number.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' You will have multiple chances to guess ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: '.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' After every guess ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'GUESS',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ', press the SUBMIT button.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' Based on your ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'GUESS',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ', you\'ll be shown the following: x',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'C',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ', y',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'B',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>> ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xff00aa70),
                              ),
                            ),
                            new TextSpan(
                              text: 'C:',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' digit in ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'GUESS',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' exists in ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' but ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'not',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' in the correct position.\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'Eg: 2C indicates 2 such digits exist.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>> ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xff00aa70),
                              ),
                            ),
                            new TextSpan(
                              text: 'B:',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' digit in ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'GUESS',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' exists in ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' and is in the ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'correct',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' position.\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'Eg: 1B indicates 1 such digit exists.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' The GOAL is to achieve ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '4B',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '!\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' As an example,\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'if ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' = 368 & ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'GUESS',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' = 963, ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '1C, 1B',
                              style: new TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: '>>',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: ' 1B because 6 exists in ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text:
                                  ' and is in the correct position.\n1C because 3 exists in ',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                            new TextSpan(
                              text: 'NUM',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                                color: Color(0xffffae3e),
                              ),
                            ),
                            new TextSpan(
                              text: ' but is not in the correct position.\n\n',
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.049,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Game Page Card
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: new BoxDecoration(
                    color: Color(0xff3a3f65),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Turns',
                              style: new TextStyle(
                                color: Color(0xff00aa70),
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.069,
                              ),
                            ),
                            Container(
                              // Box for Text Display
                              height: MediaQuery.of(context).size.width * 0.115,
                              width: MediaQuery.of(context).size.width * 0.115,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff00aa70)),
                              ),
                              child: Center(
                                child: Text(
                                  '$currScore',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.069,
                                    color: Color(0xff00aa70),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: ButtonTheme(
                                    minWidth:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    child: RaisedButton(
                                      color: Color(0xff00aa70),
                                      onPressed: () {
                                        currScore = 0;
                                        n1 = 1;
                                        n2 = 1;
                                        n3 = 1;
                                        n4 = 1;
                                        b = 0;
                                        c = 0;
                                        arr.shuffle();
                                        r1 = arr[0];
                                        r2 = arr[1];
                                        r3 = arr[2];
                                        r4 = arr[3];
                                        guesses = '';
                                        num = 0;
                                        flag = 0;
                                        alreadyGuessed?.clear();
                                        setState(() {});
                                        debugPrint('$r1\t$r2\t$r3\t$r4\n');
                                      },
                                      child: Text(
                                        'Again?',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.047,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Spacing container
                      Container(
                        width: MediaQuery.of(context).size.width * 0.05,
                        height: MediaQuery.of(context).size.width * 0.029,
                        color: Color(0xff3a3f65),
                      ),
                      Container(
                        // Box for Text Display
                        height: MediaQuery.of(context).size.width * 0.45,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff00aa70)),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          reverse: true,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * 0.05,
                                bottom:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                              child: Text(
                                '$guesses',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.049,
                                  color: Color(0xff00aa70),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_up),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n1 < 9) {
                                      n1++;
                                      setState(() {});
                                    }
                                  },
                                ),
                                Container(
                                  // Box for Text Display
                                  height:
                                      MediaQuery.of(context).size.width * 0.115,
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff00aa70)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$n1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        color: Color(0xff00aa70),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n1 > 1) {
                                      n1--;
                                      setState(() {});
                                    }
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_up),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n2 < 9) {
                                      n2++;
                                      setState(() {});
                                    }
                                  },
                                ),
                                Container(
                                  // Box for Text Display
                                  height:
                                      MediaQuery.of(context).size.width * 0.115,
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff00aa70)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$n2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        color: Color(0xff00aa70),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n2 > 1) {
                                      n2--;
                                      setState(() {});
                                    }
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_up),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n3 < 9) {
                                      n3++;
                                      setState(() {});
                                    }
                                  },
                                ),
                                Container(
                                  // Box for Text Display
                                  height:
                                      MediaQuery.of(context).size.width * 0.115,
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff00aa70)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$n3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        color: Color(0xff00aa70),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n3 > 1) {
                                      n3--;
                                      setState(() {});
                                    }
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_up),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n4 < 9) {
                                      n4++;
                                      setState(() {});
                                    }
                                  },
                                ),
                                Container(
                                  // Box for Text Display
                                  height:
                                      MediaQuery.of(context).size.width * 0.115,
                                  width:
                                      MediaQuery.of(context).size.width * 0.115,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff00aa70)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$n4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        color: Color(0xff00aa70),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  color: Color(0xff00aa70),
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize:
                                      MediaQuery.of(context).size.width * 0.069,
                                  onPressed: () {
                                    if (n4 > 1) {
                                      n4--;
                                      setState(() {});
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width * 0.65,
                          child: RaisedButton(
                            color: Color(0xff00aa70),
                            onPressed: () {
                              if (n1 == n2 ||
                                  n2 == n3 ||
                                  n1 == n3 ||
                                  n1 == n4 ||
                                  n2 == n4 ||
                                  n3 == n4) {
                                key.currentState.showSnackBar(
                                  new SnackBar(
                                    duration: Duration(seconds: 1),
                                    backgroundColor: Color(0xff00aa70),
                                    content: new Text(
                                      'Every digit must be UNIQUE',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              } else {
                                List<int> req = [0, 0, 0, 0];
                                req[0] = r1;
                                req[1] = r2;
                                req[2] = r3;
                                req[3] = r4;
                                List<int> ans = [0, 0, 0, 0];
                                ans[0] = n1;
                                ans[1] = n2;
                                ans[2] = n3;
                                ans[3] = n4;
                                num = (ans[0] * 1000) +
                                    (ans[1] * 100) +
                                    (ans[2] * 10) +
                                    ans[3];
                                int len = alreadyGuessed.length;
                                if (len != 0) {
                                  for (i in alreadyGuessed) {
                                    if (num == i) {
                                      flag = 1;
                                      break;
                                    }
                                  }
                                  if (flag == 1) {
                                    // Toast message for repeated guess
                                    key.currentState.showSnackBar(
                                      new SnackBar(
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Color(0xff00aa70),
                                        content: new Text(
                                          'You\'ve already tried this number!',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    );
                                    flag = 0;
                                  } else {
                                    alreadyGuessed.add(num);
                                    debugPrint('alGu: $alreadyGuessed');
                                    // Check guess
                                    for (i = 0; i < 4; i++) {
                                      for (j = 0; j < 4; j++) {
                                        if (req[i] == ans[j]) {
                                          if (i != j)
                                            c++;
                                          else {
                                            b++;
                                            if (b == 4) {
                                              finalScore = currScore + 1;
                                              key.currentState.showSnackBar(
                                                new SnackBar(
                                                  duration:
                                                      Duration(seconds: 30),
                                                  backgroundColor:
                                                      Color(0xff00aa70),
                                                  content: new Text(
                                                    'You GUESSED the number in $finalScore turn(s)!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  action: SnackBarAction(
                                                    label: 'Play Again',
                                                    onPressed: () {
                                                      currScore = 0;
                                                      n1 = 1;
                                                      n2 = 1;
                                                      n3 = 1;
                                                      n4 = 1;
                                                      b = 0;
                                                      c = 0;
                                                      arr.shuffle();
                                                      r1 = arr[0];
                                                      r2 = arr[1];
                                                      r3 = arr[2];
                                                      r4 = arr[3];
                                                      guesses = '';
                                                      num = 0;
                                                      flag = 0;
                                                      alreadyGuessed?.clear();
                                                      setState(() {});
                                                      debugPrint(
                                                          '$r1\t$r2\t$r3\t$r4\n');
                                                    },
                                                  ),
                                                ),
                                              );
                                            }
                                          }
                                        }
                                      }
                                    }
                                    currScore++;
                                    guesses += '\n$n1$n2$n3$n4: $b B, $c C';
                                    setState(() {});
                                    debugPrint('Req:$r1$r2$r3$r4');
                                    debugPrint('Guess:$n1$n2$n3$n4');
                                    debugPrint('Turn #: $currScore\n');
                                    b = 0;
                                    c = 0;
                                  }
                                } else {
                                  alreadyGuessed.add(num);
                                  debugPrint('alGu: $alreadyGuessed');
                                  // Check guess
                                  for (i = 0; i < 4; i++) {
                                    for (j = 0; j < 4; j++) {
                                      if (req[i] == ans[j]) {
                                        if (i != j)
                                          c++;
                                        else {
                                          b++;
                                          if (b == 4) {
                                            finalScore = currScore + 1;
                                            key.currentState.showSnackBar(
                                              new SnackBar(
                                                duration: Duration(seconds: 30),
                                                backgroundColor:
                                                    Color(0xff00aa70),
                                                content: new Text(
                                                  'You GUESSED the number in $finalScore turn(s)!',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                action: SnackBarAction(
                                                  label: 'Play Again',
                                                  textColor: Color(0xff20233e),
                                                  onPressed: () {
                                                    currScore = 0;
                                                    n1 = 1;
                                                    n2 = 1;
                                                    n3 = 1;
                                                    n4 = 1;
                                                    b = 0;
                                                    c = 0;
                                                    arr.shuffle();
                                                    r1 = arr[0];
                                                    r2 = arr[1];
                                                    r3 = arr[2];
                                                    r4 = arr[3];
                                                    guesses = '';
                                                    num = 0;
                                                    flag = 0;
                                                    alreadyGuessed?.clear();
                                                    setState(() {});
                                                    debugPrint(
                                                        '$r1\t$r2\t$r3\t$r4\n');
                                                  },
                                                ),
                                              ),
                                            );
                                          }
                                        }
                                      }
                                    }
                                  }
                                  currScore++;
                                  guesses += '\n$n1$n2$n3$n4: $b B, $c C';
                                  setState(() {});
                                  debugPrint('Req:$r1$r2$r3$r4');
                                  debugPrint('Guess:$n1$n2$n3$n4');
                                  debugPrint('Turn #: $currScore\n');
                                  b = 0;
                                  c = 0;
                                }
                              }
                            },
                            child: Text(
                              'Submit Guess',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.047,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
