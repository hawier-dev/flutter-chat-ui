enum MessageType { image, video, text, file }

class Message {
  final String text;
  final bool isSender;
  final MessageType messageType;
  final String time;
  final String imageUrl;

  Message(
    this.text,
    this.isSender,
    this.messageType,
    this.time, {
    this.imageUrl = '',
  });
}

List<Message> exampleMessages = [
  Message(
    'Curabitur pharetra magna. Aenean ac mi luctus, volutpat risus nec, tincidunt diam. ',
    true,
    MessageType.text,
    '19:25',
  ),
  Message(
    '',
    true,
    MessageType.image,
    '18:12',
    imageUrl: 'assets/image1.jpg',
  ),
  Message(
    'Aenean ac mi luctus, volutpat risus nec, tincidunt diam. ',
    false,
    MessageType.text,
    '17:55',
  ),
  Message(
    'filename.pdf',
    false,
    MessageType.file,
    '17:16',
  ),
  Message(
    '',
    false,
    MessageType.video,
    '17:35',
  ),
  Message(
    'Fusce nunc.',
    true,
    MessageType.text,
    '17:32',
  ),
  Message(
    'Ok',
    false,
    MessageType.text,
    '17:10',
  ),
  Message(
    'Fusce nunc risus.',
    true,
    MessageType.text,
    '16:32',
  ),
  Message(
    'Pellentesque non volutpat neque, facilisis ornare leo.',
    true,
    MessageType.text,
    '16:30',
  ),
  Message(
    'Lorem ipsum dotum. ',
    false,
    MessageType.text,
    '15:30',
  ),
];
