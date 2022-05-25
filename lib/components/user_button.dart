import 'package:chat_ui/components/avatar_with_status.dart';
import 'package:chat_ui/constants.dart';
import 'package:chat_ui/models/user.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class UserButton extends StatefulWidget {
  const UserButton({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  State<UserButton> createState() => _UserButtonState();
}

class _UserButtonState extends State<UserButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(user: widget.user),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            AvatarWithStatus(user: widget.user),
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
                          '${widget.user.firstName} ${widget.user.lastName}',
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
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
