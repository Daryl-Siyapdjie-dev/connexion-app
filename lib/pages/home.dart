import 'package:connexion/delayed_animation.dart';
import 'package:connexion/pages/sign_in.dart';
import 'package:connexion/pages/sign_up.dart';
import 'package:connexion/theme/theme.dart';
import 'package:connexion/widgets/BackgrounPage.dart';
import 'package:connexion/widgets/homebutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Backgrounpage(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0
              ),
              child: Center(
                child: DelayedAnimation
                (delay: 1000, child: RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(
                    children: [
                      TextSpan(
                      text: 'Welcome Back!\n',
                      style: GoogleFonts.acme(
                      textStyle: const TextStyle(
                       fontSize: 45.0,
                       fontWeight: FontWeight.w600,
                        color: Color(0xFF2D2C2C),
                        fontStyle: FontStyle.italic,
                     ),
                     ),
                   ),
                      const TextSpan(
                        text: '\nEnter personal details to your employee account',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF2D2C2C)

                        )
                      )
                    ]
                  ),)),
              ),
            )),
               Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                   child: Row(
                  children: [
                    const Expanded(
                      child: Homebutton(
                        buttonText: 'sign in',
                        onTap: SignIn(),
                        color: Colors.transparent,
                        textColor: Color(0xFF2D2C2C),
                      )
                      ),
                    Expanded(
                      
                      child: Homebutton(
                        buttonText: 'sign up',
                        onTap: SignUp(),
                        color: Color(0xFF2D2C2C),
                        textColor: darkColorScheme.primary,

                      )),
                  ],
                
              )
                ),),
            
        ],
      ),
    );
  }
}