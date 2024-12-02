import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiltarjih/q1.dart';
import 'package:jiltarjih/test.dart';

class scorePage extends StatefulWidget {
   int Score  ;

   scorePage({
    Key ? key,
     required this.Score ,
    }):super(key: key);


  @override
  State<scorePage> createState() => _scorePageState();
}

class _scorePageState extends State<scorePage> {
  String selectedAnswer = '';
  late int result;
  @override

  void initState() {
    super.initState();
    setState(() {
   result = widget.Score; // Initialize the result in the initState method.
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(255, 249, 150, 119),
      centerTitle: true,
      title: Text(
        'اكادمية جيل الترجيح' ,
        style: GoogleFonts.cairo(
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.height / 46 ,
        color: Colors.white,
        ) ,
        ),
        actions: [
           Container(
            height:MediaQuery.of(context).size.height / 20  ,
            width: MediaQuery.of(context).size.height / 20 ,
            child: Image.asset('assets/logo3.png') ,
            )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only( top: MediaQuery.of(context).size.height / 20,bottom: MediaQuery.of(context).size.height / 20 , right:MediaQuery.of(context).size.height / 50 ,left: MediaQuery.of(context).size.height / 50    ),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5 ,
                child: Column(
                  children: [
                    if(result >= 8)
                      Image.asset('assets/star.png', width: MediaQuery.of(context).size.width /2  , height: MediaQuery.of(context).size.height /5  ) ,
                    if(result >= 5 && result<8)
                      Image.asset('assets/neutral.png', width: MediaQuery.of(context).size.width /2  , height: MediaQuery.of(context).size.height /5  ) ,  
                    if(result >= 3 && result<5)
                      Image.asset('assets/pleading.png', width: MediaQuery.of(context).size.width /2  , height: MediaQuery.of(context).size.height /5  ) ,  
                    if(result >= 0 && result<3)
                      Image.asset('assets/angry.png', width: MediaQuery.of(context).size.width /2  , height: MediaQuery.of(context).size.height /5  ) ,      
                  ],
                )
                )
              ),
              Text(
                ':نتيجتك النهائية هي' ,
                style: GoogleFonts.cairo(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 28 ,
                color: Colors.black,
                 ) ,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 ,
                ),
                Text(
                 '$result / 10',
                 textAlign: TextAlign.end,
                 style: GoogleFonts.cairo(
                 fontWeight: FontWeight.bold,
                 fontSize: MediaQuery.of(context).size.height / 36 ,
                 color: Colors.black,
                 ) ,
                  ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                  height:  MediaQuery.of(context).size.height / 16 ,
                  width: MediaQuery.of(context).size.height / 5 ,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 117, 34) ,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => q1(),
                          ),
                        );
                      },
                      child: Text(
                        'أعد المحاولة' ,
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40 ,
                            color: Colors.white,
                          ) ,
                      ),
                    ),
                  ),
             ),
             Container(
                  height:  MediaQuery.of(context).size.height / 16 ,
                  width: MediaQuery.of(context).size.height / 5 ,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 117, 34) ,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed:() {
                        exit(0) ;
                      },
                      child: Text(
                        'خروج' ,
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40 ,
                            color: Colors.white,
                          ) ,
                      ),
                    ),
                  ),
             ),
                ],
              )
          ],
        ),
      ),
    );
  }
    Widget buildAnswerOption(String answer) {
    return Row(
      children: [
        Radio<String>(
          value: answer,
          groupValue: selectedAnswer,
          activeColor: Color.fromARGB(255, 237, 117, 34),
          onChanged: (value) {
            setState(() {
              selectedAnswer = value!;
            });
          },
        ),
        Text(
          answer ,
          style: GoogleFonts.cairo(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 44 ,
                color: Colors.black,
                 ) ,
          ),
      ],
    );
  }
}
