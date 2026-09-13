import 'package:bookverse/homescreen.dart';


import 'package:flutter/material.dart';



class Orderconfirmationpage extends StatefulWidget {
  const Orderconfirmationpage({super.key});

  @override
  State<Orderconfirmationpage> createState() => _OrderconfirmationpageState();
}

class _OrderconfirmationpageState extends State<Orderconfirmationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
       body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(width: double.infinity,
              height: 80,),

              Icon(
                Icons.check_circle_outline_rounded,
                size: 200,
              ),

              SizedBox(width: double.infinity,
              height: 10,),
              Text('YOUR ORDER HAS CONFIRMED',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),),
              
              SizedBox(width: double.infinity,height: 20,),
              Container(
                child: 
                ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>const HomeScreen()));
                            },

                          style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(350),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('CONTINUE SHOPPPPING',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
              )
            ],
          ),

          

    );
  }
}