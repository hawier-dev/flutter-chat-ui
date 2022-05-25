import 'package:chat_ui/components/avatar_with_status.dart';
import 'package:chat_ui/components/message_box.dart';
import 'package:chat_ui/components/typing_bar.dart';
import 'package:chat_ui/constants.dart';
import 'package:chat_ui/models/message.dart';
import 'package:chat_ui/models/user.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: kDefaultPadding,
        title: Row(
          children: [
            AvatarWithStatus(
              user: widget.user,
              size: 32,
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              child: Text(
                '${widget.user.firstName} ${widget.user.lastName}',
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
          const SizedBox(
            width: kDefaultPadding - 10,
          )
        ],
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ListView.builder(
                    itemCount: exampleMessages.length,
                    controller: _scrollController,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return MessageBox(
                        message: exampleMessages[index],
                        user: widget.user,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              const TypingBar(),
              const SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
