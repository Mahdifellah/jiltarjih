import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiltarjih/q10.dart';
import 'package:jiltarjih/test.dart';

class q9 extends StatefulWidget {
  int Score  ;

   q9({
    Key ? key,
     required this.Score ,
    }):super(key: key);
  @override
  State<q9> createState() => _q9State();
}

class _q9State extends State<q9> {
  String selectedAnswer = '';
  @override
  
  Widget build(BuildContext context) {
        bool isOptionSelected = selectedAnswer.isNotEmpty;
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
                child: Image.asset('assets/question3.png')
                )
              ),
              Text(
                'السؤال 9' ,
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
                 'اختر الاجابة غير المناسبة',
                 textAlign: TextAlign.end,
                 style: GoogleFonts.cairo(
                 fontWeight: FontWeight.bold,
                 fontSize: MediaQuery.of(context).size.height / 44 ,
                 color: Colors.black,
                 ) ,
                 
                  ),
                  Text(
                 'من بين انظمة التشغيل الحالية هي',
                 textAlign: TextAlign.end,
                 style: GoogleFonts.cairo(
                 fontWeight: FontWeight.bold,
                 fontSize: MediaQuery.of(context).size.height / 44 ,
                 color: Colors.black,
                 ) ,
                 
                  ),
              buildAnswerOption('Android'),
              buildAnswerOption('Windows'),
              buildAnswerOption('Apple'),
              buildAnswerOption('Linux'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ) ,
              Container(
              height:  MediaQuery.of(context).size.height / 16 ,
              width: MediaQuery.of(context).size.height / 8 ,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 237, 117, 34) ,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: TextButton(
                  onPressed: isOptionSelected
                ? () {
                  if (selectedAnswer == 'Apple') {
                    print(widget.Score) ;
                    widget.Score ++ ;
                    print(widget.Score) ;
                  }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => q10(
                          Score : widget.Score 
                        ),
                      ),
                    );
                  }
                : null,
                  child: Text(
                    'التالي',
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 40 ,
                        color: Colors.white,
                      ) ,
                  ),
                ),
              ),
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
