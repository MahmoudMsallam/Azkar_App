import 'dart:io';

import 'package:elancer_azkar_app/screens/faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  String content = "الحمدلله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:
            Text("مسبحة الأذكار", style: GoogleFonts.arefRuqaa(fontSize: 22)),
        centerTitle: Platform.isAndroid ? true : false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          PopupMenuButton<String>(onSelected: (String value) {
            if (content != value) {
              setState(() {
                counter = 0;
                content = value;
              });
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                height: 20,
                value: "سبحان الله",
                child: Text(
                  'سبحان الله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                height: 20,
                value: "اللهم صلي على سيدنا محمد",
                child: Text(
                  "اللهم صلي على سيدنا محمد",
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                height: 20,
                value: "الله أكبر",
                child: Text(
                  "الله أكبر",
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                height: 20,
                value: "الحمدلله",
                child: Text(
                  "الحمدلله",
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
            ];
          }),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/info_screen",
                    arguments: {'message': 'Info Screen'});
              },
              icon: const Icon(Icons.info)),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FaqsScreen(message : 'FAQs Screen')
                )) ;
              },
              icon: Icon(
                Icons.question_answer_sharp
              )
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFF7D9D9C),
          Color(0XFF576F72),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFE4DCCF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 6,
                        offset: Offset(0, 6)),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ae01.alicdn.com/kf/H876570a60e6c44409a99550f72023762O/Onxy.jpg'))),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.black45, blurRadius: 6)
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      content,
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: const Color(0XFFE4DCCF),
                    alignment: Alignment.center,
                    child: Text(
                      counter.toString(),
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0XFFFCF8E8),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(10)))),
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.arefRuqaa(
                            color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0XFF94B49F),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(10)))),
                      child: Text(
                        'اعادة',
                        style: GoogleFonts.arefRuqaa(
                            color: Colors.black, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter ++ ;
          });
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
