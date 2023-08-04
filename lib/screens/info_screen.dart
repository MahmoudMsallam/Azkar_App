import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class InfoScreen extends StatelessWidget {
   InfoScreen({super.key});
  String message = "No Message" ;

  @override
  Widget build(BuildContext context) {
    ModalRoute? modelRoute = ModalRoute.of(context) ;
    // ال ModelRoute هي عبارة عن الشئ المستخدم ل جلب حدث الانتقال و خصائصه للشاشة الي انا بدي أنتقل الها ، وبحالتنا هي ال info screen
    Map<String , dynamic> map =  modelRoute?.settings.arguments as Map <String , dynamic> ;
    if(map.containsKey('message')) {
      message = map ['message'] ;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("عن التطبيق"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context) ;
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp
          ),
        ),
      ),
      body: Center(
        child: Text(
            message,
          style: GoogleFonts.nunito(
            color: Colors.black ,
            fontSize: 24 ,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
