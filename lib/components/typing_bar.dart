import 'package:flutter/material.dart';

class TypingBar extends StatefulWidget {
  const TypingBar({Key? key}) : super(key: key);

  @override
  State<TypingBar> createState() => _TypingBarState();
}

class _TypingBarState extends State<TypingBar> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(5),
              minimumSize: Size.zero,
              primary: Theme.of(context).colorScheme.secondary,
              onPrimary: Theme.of(context).colorScheme.onSecondary,
              shadowColor: Theme.of(context).colorScheme.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Icon(
              Icons.add_rounded,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextFormField(
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
              autocorrect: true,
              autofocus: false,
              decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.only(left: 20, right: 20),
                hintText: 'Message...',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(5),
              minimumSize: Size.zero,
              primary: Theme.of(context).colorScheme.secondary,
              onPrimary: Theme.of(context).colorScheme.onSecondary,
              shadowColor: Theme.of(context).colorScheme.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Icon(
              Icons.send_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
