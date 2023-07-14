import 'package:flutter/material.dart';

class GlobalLargeText extends StatelessWidget {
  final String title;
  const GlobalLargeText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.displayLarge);
  }
}
