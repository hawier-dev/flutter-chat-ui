import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.name,
      minLines: 1,
      maxLines: 1,
      autocorrect: true,
      autofocus: false,
      onTap: () {},
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        hintText: 'Search...',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        fillColor: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}
