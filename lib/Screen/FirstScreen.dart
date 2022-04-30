import 'package:college/Screen/SecondScreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding:  const EdgeInsets.only(top: 60),
                child: Container
                  (
                  height: 220,
                    child: Image.asset('assets/images/classroom.png')),
              ),
              SizedBox(height: 20,),
              Container(
                height: 300,
                width:420,
                child:  Card(
               color: Colors.white,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  
                ),
                child:Column(
                  children:  [
                    const SizedBox(height: 20,),
                    const Text('Discover Your next Skill\n Learn Anything You Want',style:TextStyle(
                      fontSize: 20.0,fontWeight: FontWeight.bold
                    ) ,),
                    const SizedBox(height: 20,),
                    const Text('Discover the thing you want to\n Learn and grow with them'),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10.0)

                            ),
                            primary:Colors.deepPurpleAccent,
                          ),
                          onPressed:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()) );



                      }, child: const Text('Get Started')),
                    )

                    
                  ],
                  
                )  


                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
