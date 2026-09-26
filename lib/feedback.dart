import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Feedback_page extends StatefulWidget {

  const Feedback_page({super.key});


  @override
  State<Feedback_page> createState() => _Feedback_pageState();

}



class _Feedback_pageState extends State<Feedback_page> {


  TextEditingController feedbackController = TextEditingController();


  int rating = 0;



  Future<void> submitFeedback() async {


    User? user = FirebaseAuth.instance.currentUser;



    await FirebaseFirestore.instance
        .collection("feedbacks")
        .add({

      "userId": user?.uid ?? "guest",

      "name": user?.displayName ?? "Unknown",

      "email": user?.email ?? "No email",

      "rating": rating,

      "comment": feedbackController.text,

      "createdAt": FieldValue.serverTimestamp(),

    });



    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        content: Text("Feedback submitted successfully"),
      ),

    );



    feedbackController.clear();


  }



  @override
  void dispose() {

    feedbackController.dispose();

    super.dispose();

  }





  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(

        backgroundColor: Colors.white,

      ),



      body: Padding(

        padding: EdgeInsets.all(20),



        child: Column(


          crossAxisAlignment: CrossAxisAlignment.start,



          children: [



            SizedBox(height: 30),




            Center(

              child: Text(

                "We value your feedback",

                style: TextStyle(

                  fontSize: 24,

                  fontWeight: FontWeight.bold,

                ),

              ),

            ),




            SizedBox(height: 40),




            Text(

              "How was your experience?",

              style: TextStyle(

                fontSize: 18,

                fontWeight: FontWeight.w900,

              ),

            ),


            Center(

              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: List.generate(5, (index){

                  return IconButton(

                    onPressed: (){

                      setState((){

                        rating = index + 1;

                      });

                    },


                    icon: Icon(

                      index < rating
                          ? Icons.star
                          : Icons.star_border,


                      color: Colors.black,

                      size: 35,

                    ),

                  );

                }),

              ),

            ),




            SizedBox(height: 40),






            TextField(


              controller: feedbackController,


              maxLines: 5,


              decoration: InputDecoration(


                hintText: "Write your feedback...",



                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(10),

                ),

              ),

            ),





            SizedBox(height: 30),






            Center(


              child: SizedBox(



                width: 250,


                height: 60,



                child: ElevatedButton(



                  onPressed: (){


                    submitFeedback();


                  },



                  style: ElevatedButton.styleFrom(



                    backgroundColor: Colors.black,



                    shape: RoundedRectangleBorder(


                      borderRadius: BorderRadius.circular(30),


                    ),


                  ),




                  child: Text(



                    "Submit Feedback",



                    style: TextStyle(


                      color: Colors.white,


                      fontSize: 18,


                      fontWeight: FontWeight.bold,


                    ),



                  ),



                ),


              ),


            ),





            SizedBox(height: 10),





            Text(

              'Thanks for your feedback',


              style: TextStyle(


                color: Colors.black,


                fontSize: 20,


                fontWeight: FontWeight.bold,


              ),


            ),




          ],


        ),


      ),


    );


  }


}