import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiltarjih/q4.dart';
import 'package:jiltarjih/test.dart';

class q3 extends StatefulWidget {
  int Score  ;

   q3({
    Key ? key,
     required this.Score ,
    }):super(key: key);

  @override
  State<q3> createState() => _q3State();
}

class _q3State extends State<q3> {
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
                'السؤال 3' ,
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
                 'كم عدد سنين الدراسة في المدرسة العليا للاعلام الالي ؟',
                 textAlign: TextAlign.end,
                 style: GoogleFonts.cairo(
                 fontWeight: FontWeight.bold,
                 fontSize: MediaQuery.of(context).size.height / 44 ,
                 color: Colors.black,
                 ) ,
                  ),
              buildAnswerOption('4'),
              buildAnswerOption('5'),
              buildAnswerOption('6'),
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
                   if (selectedAnswer == '5') {
                    print(widget.Score) ;
                    widget.Score ++ ;
                    print(widget.Score) ;
                  }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => q4(
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
