import 'package:first_app/widgets/themebutton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = '/welcome-screen';
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset('assets/images/of_main_bg.png', fit: BoxFit.cover),
                ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('HungryByte',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      )
                      ),
                      SizedBox(height: 20),
                      Text('Provides Recipe',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )
                      ),
                      SizedBox(height: 40),
                    
                        ThemeButton(
                    label: 'Tratar Ahora!',
                    color: Colors.green,
                    onClick: () {

                    },
                  ),
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}