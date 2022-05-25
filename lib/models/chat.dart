import 'package:chat_ui/models/message.dart';
import 'package:chat_ui/models/user.dart';

class Chat {
  final User user;
  final List<Message> chatMessages;
  final String lastMessage;
  final String time;
  final int unreadedCount;
  final bool unreaded;

  Chat(
    this.user,
    this.chatMessages,
    this.lastMessage,
    this.time,
    this.unreaded, {
    this.unreadedCount = 0,
  });
}

List<Chat> exampleChats = [
  Chat(exampleUsers[0], exampleMessages, 'Lorem ipsum dotum.', '3m ago', true,
      unreadedCount: 2),
  Chat(
    exampleUsers[1],
    exampleMessages,
    'Curabitur orci metus, porttitor sit amet eros quis, egestas pharetra magna. Aenean ac mi luctus, volutpat risus nec, tincidunt diam. ',
    '10m ago',
    false,
  ),
  Chat(exampleUsers[2], exampleMessages,
      'Cras ut imperdiet tortor, id convallis urna', '3h ago', true,
      unreadedCount: 1),
  Chat(exampleUsers[3], exampleMessages, 'Ok', '5h ago', false),
  Chat(
      exampleUsers[4],
      exampleMessages,
      'Pellentesque non volutpat neque, facilisis ornare leo. Nulla et diam at enim rhoncus consequat a at dui',
      '10h ago',
      true,
      unreadedCount: 1),
  Chat(exampleUsers[5], exampleMessages, 'Aenean justo arcu', '2d ago', false),
  Chat(
      exampleUsers[6],
      exampleMessages,
      'Fusce nunc risus, mattis et mi eu, feugiat sollicitudin quam',
      '3d ago',
      false),
  Chat(exampleUsers[7], exampleMessages, 'Maecenas a maximus nisl', '5d ago',
      false),
  Chat(exampleUsers[0], exampleMessages, 'Lorem ipsum dotum.', '10d ago', true,
      unreadedCount: 2),
  Chat(
    exampleUsers[1],
    exampleMessages,
    'Curabitur orci metus, porttitor sit amet eros quis, egestas pharetra magna. Aenean ac mi luctus, volutpat risus nec, tincidunt diam. ',
    '11d ago',
    false,
  ),
  Chat(exampleUsers[2], exampleMessages,
      'Cras ut imperdiet tortor, id convallis urna', '12d ago', true,
      unreadedCount: 1),
  Chat(exampleUsers[3], exampleMessages, 'Ok', '13d ago', false),
  Chat(
      exampleUsers[4],
      exampleMessages,
      'Pellentesque non volutpat neque, facilisis ornare leo. Nulla et diam at enim rhoncus consequat a at dui',
      '14d ago',
      true,
      unreadedCount: 1),
  Chat(exampleUsers[5], exampleMessages, 'Aenean justo arcu', '15d ago', false),
  Chat(
      exampleUsers[6],
      exampleMessages,
      'Fusce nunc risus, mattis et mi eu, feugiat sollicitudin quam',
      '16d ago',
      false),
  Chat(exampleUsers[7], exampleMessages, 'Maecenas a maximus nisl', '17d ago',
      false),
];
