import 'package:flutter/material.dart';
import 'package:labo_flutter/pages/page2_screen.dart';

class Page1_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const LogoRow(),
          const Spacer(),
          const MainImage(),
          const DescriptionText(),
          const Spacer(),
          NavigateButton(),
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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

class NavigateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 8, right: 20, bottom: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page2_Screen()),
          );
        },
        child: const Text("C'EST PARTI "),
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
       "The effective method for learning an African language!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
