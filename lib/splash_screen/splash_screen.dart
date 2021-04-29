import 'dart:async';
import 'dart:convert';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 10);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/logo/logoD.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),


            InkWell(
              child: Text(
                'Designed by SehaChain',
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              

            ),
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              strokeWidth: 2,
            ),
         
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.only(top: 20.0)),
          ],
        ),
      ),
    );
  }
}
