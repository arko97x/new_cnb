import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  ' The app will randomly generate a 3 digit number ',
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
                              text: '3B',
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
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                  ),
                ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
