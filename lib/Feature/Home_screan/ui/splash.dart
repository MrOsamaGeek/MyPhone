import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/widgets/pageview.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => Pagewidgets()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6B4C36),
      body: Center(
        child: Text(
          'MY Phone',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
