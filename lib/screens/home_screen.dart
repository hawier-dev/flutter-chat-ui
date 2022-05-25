import 'package:chat_ui/components/chat_button.dart';
import 'package:chat_ui/components/search_bar.dart';
import 'package:chat_ui/components/user_button.dart';
import 'package:chat_ui/constants.dart';
import 'package:chat_ui/models/chat.dart';
import 'package:chat_ui/models/user.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavigationIndex = 0;

  // Bottom nabigation tabs
  final List<Widget> _tabs = [
    ScrollConfiguration(
      behavior: MyBehavior(),
      child: ListView(
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const SearchBar(),
          const SizedBox(
            height: kDefaultPadding,
          ),
          for (var chat in exampleChats) ChatButton(chat: chat)
        ],
      ),
    ),
    ScrollConfiguration(
      behavior: MyBehavior(),
      child: ListView(
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const SearchBar(),
          const SizedBox(
            height: kDefaultPadding,
          ),
          for (var user in sortedUsers) UserButton(user: user)
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: kDefaultPadding,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          child: _tabs[_bottomNavigationIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        currentIndex: _bottomNavigationIndex,
        onTap: (index) {
          setState(() {
            _bottomNavigationIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'People', icon: Icon(Icons.people)),
        ],
      ),
    );
  }
}
