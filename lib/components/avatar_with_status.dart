import 'package:chat_ui/constants.dart';
import 'package:chat_ui/models/user.dart';
import 'package:flutter/material.dart';

class AvatarWithStatus extends StatefulWidget {
  const AvatarWithStatus({
    Key? key,
    required this.user,
    this.size = 54,
    this.showStatus = true,
  }) : super(key: key);

  final User user;
  final double size;
  final bool showStatus;

  @override
  State<AvatarWithStatus> createState() => _AvatarWithStatusState();
}

class _AvatarWithStatusState extends State<AvatarWithStatus> {
  _statusColor() {
    switch (widget.user.userStatus) {
      case UserStatus.online:
        return kOnlineColor;
      case UserStatus.idle:
        return kIdleColor;
      case UserStatus.doNotDisturb:
        return kDoNotDisturbColor;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.user.imageUrl),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          widget.user.userStatus == UserStatus.offline ||
                  widget.showStatus == false
              ? const SizedBox()
              : Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: widget.size / 3.5,
                    height: widget.size / 3.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.background,
                        width: 2,
                      ),
                      color: _statusColor(),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
