import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
      //To remove the DEBUG banner from the top-right corner
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00aa70),
      //To center the whole damn thing
      body: new Center(
        child: new Column(
          //To center the widget vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Card Carousel
            CarouselSlider(
              height: MediaQuery.of(context).size.height * 0.8,
              items: <Widget>[
                //Card 1
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: new BoxDecoration(
                    color: Color(0xff00c17a),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Guess the Number\n\n',
                            style: new TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.069,
                            ),
                          ),
                          new TextSpan(
                            text:
                                'The app will randomly generate a 3 digit number ',
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
                              background: Paint()..color = Colors.greenAccent,
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
                        ],
                      ),
                    ),
                  ),
                ),
                //Card 2
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: new BoxDecoration(
                    color: Color(0xff00c17a),
                    borderRadius: new BorderRadius.all(
                      Radius.circular(30.0),
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
