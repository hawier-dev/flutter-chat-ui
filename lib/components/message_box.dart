import 'package:chat_ui/constants.dart';
import 'package:chat_ui/models/message.dart';
import 'package:chat_ui/models/user.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key? key,
    required this.message,
    required this.user,
  }) : super(key: key);

  final Message message;
  final User user;

  // MessageType.text
  Widget textMessage(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: message.isSender
            ? kPrimaryColor
            : Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: message.isSender
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }

  // MessageType.image
  Widget imageMessage(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            message.imageUrl,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  // MessageType.video
  Widget videoMessage(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          // TODO: Video thumbnail
          image: AssetImage(
            'assets/image2.jpg',
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Stack(
        children: [
          // Black color
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5),
                minimumSize: Size.zero,
                primary: Theme.of(context).colorScheme.background,
                onPrimary: Theme.of(context).colorScheme.onBackground,
                shadowColor: Theme.of(context).colorScheme.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
              ),
            ),
          )
        ],
      ),
    );
  }

  // MessageType.file
  Widget fileMessage(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: message.isSender
            ? kPrimaryColor
            : Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.file_present_rounded,
            color: kPrimaryColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(message.text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _messageType() {
      switch (message.messageType) {
        case MessageType.text:
          return textMessage(context);
        case MessageType.image:
          return imageMessage(context);
        case MessageType.file:
          return fileMessage(context);
        case MessageType.video:
          return videoMessage(context);
        default:
          return textMessage(context);
      }
    }

    return Padding(
      padding: message.isSender
          ? const EdgeInsets.only(left: kDefaultPadding + 20)
          : const EdgeInsets.only(right: kDefaultPadding + 20),
      child: Column(
        crossAxisAlignment: message.isSender
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          _messageType(),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              message.time,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
