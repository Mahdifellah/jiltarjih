import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiltarjih/q1.dart';

class esiPage extends StatelessWidget {
  const esiPage({super.key});

  @override
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
                child: Image.asset('assets/esiLogo.jpg')
                )
              ),
              Text(
                'اختبر معلوماتك' ,
                style: GoogleFonts.cairo(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 28 ,
                color: Colors.black,
                 ) ,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'سنقوم باجراء اختبار بسيط من اجل اختبار معرفتك حول المدرسة العليا للاعلام الالي ومدى اطلاعك على هذا التخصص حيث سنقوم بطرح 10 اسئلة واعطائك النتيجة النهائية في الاخير .هل انت مستعد؟',
                      textAlign: TextAlign.end,
                     style: GoogleFonts.cairo(
                     fontWeight: FontWeight.bold,
                     fontSize: MediaQuery.of(context).size.height / 36 ,
                     color: Colors.black,
                     ) ,
                      ),
                  ),
                ),
              Container(
              height:  MediaQuery.of(context).size.height / 16 ,
              width: MediaQuery.of(context).size.height / 8 ,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 237, 117, 34) ,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                     Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) => q1(),
                     ));
                  },
                  child: Text(
                    'ابدأ' ,
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
    );;
  }
}