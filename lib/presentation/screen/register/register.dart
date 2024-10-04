import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const paht = '/RegisterScreen';
  static const name = 'RegisterScreen';
  
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
                colors: [Colors.black,Colors.cyan],
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
                  '/loremipsum',
                  style: TextStyle(
                    fontSize: letterSize * 0.010,
                    color: Colors.white
                  ),
                ),
                Text(
                  'Logo',
                  style: TextStyle(
                    fontSize: letterSize * 0.040,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.2,
                  child: Divider(color: Colors.white,height: smallSpacing *0,)
                ),
                Text(
                  'roco',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: letterSize * 0.040,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              width: screenSize.width * 0.6,
              height: containerSize * 1,
              decoration: const BoxDecoration( 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: letterSize * 0.035,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    SizedBox(height: smallSpacing * 0.3),
                    SizedBox(
                      height: screenSize.height * 0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: letterSize * 0.015
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
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: letterSize * 0.015
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
                          hintText: 'Repeat password',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: letterSize * 0.015
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: const BorderSide(color: Colors.black)
                          )
                        )
                      ),
                    ),                   
                  ],
                ),                
              ),
            ),                      
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: smallSpacing * 34,
            child: ElevatedButton(
              onPressed: (){
                //context.push();
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
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Power by',
                    style: TextStyle(
                      fontSize: letterSize * 0.015,
                      color: Colors.white,
                      
                    ),
                  ),
                  Text(
                    'LOGO',
                    style: TextStyle(
                      fontSize: letterSize * 0.030,
                      color: Colors.white
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