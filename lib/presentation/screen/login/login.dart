import 'package:app_final/presentation/screen/noticias/noticias.dart';
import 'package:app_final/presentation/screen/register/register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'LoginScreen';
  static const paht = '/LoginScreen';
  const LoginScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double containerSize = screenSize.height * 0.3;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;

    return Scaffold(
      body: Stack(
        children:[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red,Colors.white],
                stops: [
                  0.5,
                  0.5
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                                           
              )
            ),
          ),
          SizedBox(
            width: screenSize.width * 1,
            height: smallSpacing * 22,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Noticias',
                  style: TextStyle(
                    fontSize: letterSize * 0.050,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: screenSize.width * 0.6,
              height: containerSize * 0.9,
              decoration: const BoxDecoration( 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                color: Colors.black38
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: letterSize * 0.030,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    SizedBox(height: smallSpacing),
                    SizedBox(
                      height: screenSize.height * 0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: letterSize * 0.015,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const BorderSide(color: Colors.black)
                          )
                        )
                      ),
                    ),
                    SizedBox(height: smallSpacing),
                    SizedBox(
                      height: screenSize.height * 0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: letterSize * 0.015,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const BorderSide(color: Colors.black)
                          )
                        )
                      ),
                    ),
                    SizedBox(height: smallSpacing),
                    Row(
                      children: [
                        Text(
                          'forget password?',
                          style: TextStyle(
                          fontSize: letterSize * 0.015,
                          )
                        ),
                        SizedBox(width: screenSize.width * 0.01),
                        Text(
                          'Get it Back',
                          style: TextStyle(
                            fontSize: letterSize * 0.015,
                            fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    
                  ],
                ),                
              ),
            ),                      
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: smallSpacing * 33,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> NotiScreen()));
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: letterSize * 0.015,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontSize: letterSize * 0.015,
                      //color: Colors.white,
                      
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(RegisterScreen.paht);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: letterSize * 0.025,
                        //color: Colors.white
                      ),
                      
                    ),
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}