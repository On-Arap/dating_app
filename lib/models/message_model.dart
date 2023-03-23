import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class Message extends Equatable {
  final int id;
  final int senderId;
  final int receiverId;
  final String message;
  final DateTime dateTime;
  final String timeString;

  const Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.dateTime,
    required this.timeString,
  });

  @override
  List<Object?> get props => [id, senderId, receiverId, message, dateTime, timeString];

  static List<Message> messages = [
    Message(id: 1, senderId: 1, receiverId: 2, message: 'Hey, how are you?', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 2, senderId: 2, receiverId: 1, message: 'I\'m good, than you.', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 3, senderId: 1, receiverId: 2, message: 'I\'m good, as well. thank you.', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 4, senderId: 2, receiverId: 1, message: 'Hey, azy arrete de m\'parler toi', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 5, senderId: 1, receiverId: 2, message: 'questia zebi', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
  ];
}
