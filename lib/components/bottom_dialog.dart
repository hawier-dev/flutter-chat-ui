import 'package:flutter/material.dart';

class BottomDialog extends StatelessWidget {
  const BottomDialog({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Container(
        width: MediaQuery.of(context).size.width,
      ),
      alignment: Alignment.bottomCenter,
      titlePadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      children: children,
    );
  }
}
