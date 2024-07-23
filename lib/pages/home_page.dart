import 'package:flutter/material.dart';
import 'package:labo_flutter/pages/page1_screen.dart';
import 'package:labo_flutter/theme/app_theme.dart';


class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 35),
          const LogoRow(),
          const Spacer(),
          const MainImage(),
          const DescriptionText(),
          const Spacer(),
          NavigateButton(),
          LinkText(),
        ],
      ),
    );
  }
}

class LogoRow extends StatelessWidget {
  const LogoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(10),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Image(
            image: AssetImage('assets/images/logoimage.png'),
            width: 50,
          ),
          SizedBox(width: 10),
          Image(
            image: AssetImage('assets/images/logotext.png'),
            width: 100,
          ),
        ],
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Image(
        image: AssetImage('assets/images/logoimage.png'),
        width: 200,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16),
      child: const Text(
        'The free, fun and '
        'effective way to learn a '
        'language!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class NavigateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,top: 8,right: 20,bottom: 8),
      child: ElevatedButton(
      
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Page1_Screen()),
          );
        },
        child: const Text('GET STARED'),
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          
        },
        child: const Text('I ALREADY HAVE AN ACCOUNT',
        style: TextStyle(color: Colors.blue),),
      ),
    );
  }
}


