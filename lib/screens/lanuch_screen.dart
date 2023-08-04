import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LunchSecreen extends StatefulWidget {
  const LunchSecreen({super.key});

  @override
  State<LunchSecreen> createState() => _LunchSecreenState();
}

class _LunchSecreenState extends State<LunchSecreen> {
  @override
  void initState() { // أول ما ينفذ عندما يتم وضع ال widget بال tree
    super.initState();
    print("Init State") ;
    //TODO : Navigate to HomeScreen after 3 Secounds
    Future.delayed(const Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, "/home_screen") ;
      // pushNamed => بتعمل اضافة ل سكرين جديدة مع المحافظة على السكرين القديمة و يمكن الرجوع لها
      // pushReplacmentNamed =>  بتعمل اضافة ل سكرين جديدة مع حذف تلقائيا للسكرين القديمة يعني حتستبدل واجهة ب واجهة جديدة
      // popAndPushNamed => نفس الي فوقها لكن لما ييجي ينتقل ل الشاشة الثانية بيظهر شاشة سوداء بمدة أقل من الثانية
    });
  }
  @override
  Widget build(BuildContext context) {
    print("Build") ;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFAD9A1) ,
                Color(0XFFF37878)
              ]
          )
        ),
        child: Text(
          'تطبيق المسبحة' ,
          style: GoogleFonts.cairo(
            fontSize: 25 ,
            fontWeight: FontWeight.bold ,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
