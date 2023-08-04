import 'package:flutter/material.dart';

class FaqsScreen extends StatefulWidget {
   const FaqsScreen({super.key , required this.message});

   final String message  ;

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Faqs"
        ),
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
            widget.message  // يعني اذا كانت بتساوي null ، أعطيها ال default (no message)
        ),
      ),
    );
  }
}
