import 'package:flutter/material.dart';
import 'package:labo_flutter/pages/page1_screen.dart';
import 'package:labo_flutter/theme/app_theme.dart';

class Page2_Screen extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duolingo Clone',
      theme: appTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {'name': 'Spanish', 'learners': '36.2M learners'},
    {'name': 'French', 'learners': '21.6M learners'},
    {'name': 'Japanese', 'learners': '15.7M learners'},
    {'name': 'Korean', 'learners': '13.8M learners'},
    {'name': 'German', 'learners': '13.4M learners'},
    {'name': 'Hindi', 'learners': '9.56M learners'},
  ];

  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
            const SizedBox(height: 35),
            const  LogoImage(),
            const   SizedBox(height: 20),
            const  MainImage(),
            const  SizedBox(height: 20),
              Text('I want to learn...', style: Theme.of(context).textTheme.titleLarge,),
            const   SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return LanguageCard(
                    
                    name: languages[index]['name']!,
                    learners: languages[index]['learners']!,
                  );
                },
              ),
              SizedBox(height: 20), 
              ElevatedButton(onPressed: (){
                  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Page1_Screen()),
          );
              }, child: const Text('CONTUNUE'))
            ],
          ),
        ),
      ),
    );
  }
}
class LanguageCard extends StatelessWidget {
  final String name;
  final String learners;

  LanguageCard({required this.name, required this.learners});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.white.withOpacity(0.2), width: 1.0),
      ),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(name, style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 8),
            Text(learners, style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}




class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        children: [
           Align(
                  alignment: Alignment.topRight,
                  child: Image(
                 image: AssetImage('assets/images/logotext.png'),
                 width: 150,
                  ),
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hi, I'm 'Bibala' ", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              
          ),
          ),
           Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                 image: AssetImage('assets/images/logoimage.png'),
                 width: 120,
                  ),
                ),

        ],
      ),
    );
  }
}