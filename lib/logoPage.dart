import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'congraPage.dart';

class logoPage extends StatelessWidget {
  const logoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Home() ,
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Image.asset('assets/logo.png'),
             ),
            Column(
              children: [
                Center(
                  child: Text(
                    'الابواب مفتوحة\n على الجامعة' ,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 18 ,
                      color: Color.fromARGB(255, 255, 117, 34) ,
                    ) ,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      //width: 5*MediaQuery.of(context).size.width /9  ,
                    ) ,
                    Container(
                      height: MediaQuery.of(context).size.height / 20 ,
                      width: MediaQuery.of(context).size.height / 6 ,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 177, 119),
                        borderRadius: BorderRadius.circular(15)
        
                      ),
                      child: Center(
                        child: Text(
                          'الطبعة التاسعة' ,
                       style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 46 ,
                      color: Colors.white,
                    ) ,
                        ),
                      ),
                    ),
                  ],
                )
              ],
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
                    builder: (context) => congraPage(),
                    ));
                  },
                  child: Text(
                    'التالي' ,
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
      ) ;
  }
}