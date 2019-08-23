import 'package:elropy/utilities/colors.dart';
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final String title, message;
  EmptyState({this.title, this.message});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5),
      elevation: 16,
      color: AppColors().mainColor.withOpacity(.8),
      shadowColor: Theme.of(context).backgroundColor.withOpacity(.2),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(message, style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}