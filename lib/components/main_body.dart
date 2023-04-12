import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key, required this.child, this.padding = const EdgeInsets.only(top: 30.0) // Default padding
      })
      : super(key: key);
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),

        ),
      ),
      child: child,
    );
  }
}
