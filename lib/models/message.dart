class Message {
  final String id;
  final String senderId;
  final String recieverId;
  final String senderName;
  final String recieverName;
  final String content;
  final DateTime timeStamp;
  final bool isRead;

  Message({
    required this.id,
    required this.senderId,
    required this.recieverId,
    required this.senderName,
    required this.recieverName,
    required this.content,
    required this.timeStamp,
    required this.isRead,
  });

  static List<Message> dummyMessages = [
    Message(
      id: '1',
      senderId: '2',
      recieverId: '1',
      senderName: 'Jone Smith',
      recieverName: 'John Doe',
      content: 'Thank you for your interest in the propery',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 30)),
      isRead: true,
    ),
    Message(
      id: '2',
      senderId: '1',
      recieverId: '2',
      senderName: 'John Does',
      recieverName: 'Jone Doe',
      content: 'Is the property still available ?',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 30)),
      isRead: true,
    ),
  ];
}
