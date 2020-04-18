import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.network("https://avatars3.githubusercontent.com/u/35305645?s=460&u=e59c7ccc7ab2fee25595d4d0da89e2bfa8c68294&v=4"),
          title: "Muzammil Dafedar",
          body: "I have 9 months of exprience in jn software developers ",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("images/visueldemo.png"),
        title: "Live Demo page 2 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/demo3.png"),
        title: "Live Demo page 3",
        body: "Welcome to Proto Coders Point",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/demo4.png"),
        title: "Live Demo page 4 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Self introduction"),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white70,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        skip: Text("Skip"),
        done: Text("Got it "),
        onDone: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ));

        },
      ),
    );
  }
}