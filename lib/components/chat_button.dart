import 'package:chat_ui/components/avatar_with_status.dart';
import 'package:chat_ui/components/bottom_dialog.dart';
import 'package:chat_ui/constants.dart';
import 'package:chat_ui/models/chat.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatButton extends StatefulWidget {
  const ChatButton({
    Key? key,
    required this.chat,
  }) : super(key: key);
  final Chat chat;

  @override
  State<ChatButton> createState() => _ChatButtonState();
}

class _ChatButtonState extends State<ChatButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(user: widget.chat.user),
          ),
        );
      },
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return BottomDialog(
              children: [
                ListTile(
                  title: Text('Archive'),
                  leading: Icon(Icons.archive_rounded),
                  iconColor: Theme.of(context).colorScheme.onSurface,
                ),
                ListTile(
                  title: Text('Delete'),
                  leading: Icon(Icons.delete_rounded),
                  iconColor: Theme.of(context).colorScheme.onSurface,
                ),
                ListTile(
                  title: Text('Block'),
                  leading: Icon(Icons.block_rounded),
                  iconColor: Theme.of(context).colorScheme.onSurface,
                ),
              ],
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            AvatarWithStatus(user: widget.chat.user),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${widget.chat.user.firstName} ${widget.chat.user.lastName}',
                          maxLines: 1,
                          style: widget.chat.unreaded
                              ? TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                )
                              : const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      Text(
                        widget.chat.time,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          widget.chat.lastMessage,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: widget.chat.unreaded
                              ? TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                )
                              : const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      widget.chat.unreaded
                          ? Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Container(
                                width: 14,
                                height: 14,
                                decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    widget.chat.unreadedCount.toString(),
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
