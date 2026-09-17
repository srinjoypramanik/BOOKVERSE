// import 'package:flutter/material.dart';
//
// class Settings extends StatelessWidget {
//   const Settings({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         // title: Text('Settings',
//         //     style: TextStyle(
//         //         color: Colors.black,
//         //     ),
//         // ),
//       ),
//
//       body: Column(
//           children: [
//
//             SizedBox(height: 20,),
//
//             Center(
//               child: SizedBox(
//
//                 height: 70,
//                 child: TextButton(
//                   onPressed: (){
//
//                   },
//
//                   child: Text('Language',
//                     style: TextStyle(
//                       fontSize: 40,
//                       decoration: TextDecoration.underline,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ]
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';


class Settings extends StatefulWidget {

  const Settings({super.key});


  @override
  State<Settings> createState() => _SettingsState();

}



class _SettingsState extends State<Settings> {


  bool languageOpen = false;



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      backgroundColor: Colors.white,



      appBar: AppBar(


        backgroundColor: Colors.white,


        centerTitle: true,


        leading: languageOpen

            ? IconButton(

          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),

          onPressed: (){

            setState(() {

              languageOpen = false;

            });

          },

        )

            : null,



        title: Text(

          languageOpen ? "Language" : "Settings",

          style: TextStyle(

            color: Colors.black,

          ),

        ),


      ),




      body: languageOpen

          ? languageList()

          : settingsPage(),



    );


  }






  Widget settingsPage(){


    return Column(


      children: [


        SizedBox(height: 20),



        Center(


          child: SizedBox(


            height: 70,


            child: TextButton(


              onPressed: (){


                setState(() {


                  languageOpen = true;


                });


              },



              child: Text(

                "Language",


                style: TextStyle(


                  fontSize: 40,


                  decoration: TextDecoration.underline,


                  color: Colors.black,


                ),


              ),


            ),


          ),


        ),



      ],


    );


  }







  Widget languageList(){


    List<String> languages = [


      "English",

      "Bangla",

      "Dutch",

      "Hindi",

      "Arabic",

      "French",

      "German",

      "Spanish",


    ];



    return ListView.builder(


      itemCount: languages.length,



      itemBuilder: (context,index){


        return ListTile(


          title: Text(


            languages[index],


            style: TextStyle(

              fontSize: 22,

              color: Colors.black,

            ),


          ),



          onTap: (){


            print("${languages[index]} selected");


          },


        );


      },


    );


  }


}
