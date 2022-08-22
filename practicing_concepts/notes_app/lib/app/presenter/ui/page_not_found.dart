import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {

  const PageNotFound({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Not Found'),),
           body: Container(),
       );
  }
}