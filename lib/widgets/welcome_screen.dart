import 'package:first_app/helpers/appcolors.dart';
import 'package:first_app/screens/tabs_screen.dart';
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
                      SizedBox(height: 50),
                      Text('HungryByte',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.MAIN_COLOR,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      )
                      ),
                      SizedBox(height: 5),
                      Text('Provides Recipe',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )
                      ),
                    SizedBox(height: 50),
                  ThemeButton(
                    label: '" Cooking experience Like a Chef "',
                    highlight: Colors.green[900],
                    color: AppColors.MAIN_COLOR,
                    onPressed: () {
                    },
                  ),
                  ThemeButton(
                    label: "Get Started!",
                    labelColor: AppColors.MAIN_COLOR,
                    color: Colors.transparent,
                    highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                    borderColor: AppColors.MAIN_COLOR,
                    borderWidth: 4,
                    onPressed: ()  {Navigator.pushNamed(context, '/tabs-screen');},
                  )
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}