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
    Message(id: 6, senderId: 1, receiverId: 3, message: 'Hey, how are you?', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 7, senderId: 3, receiverId: 1, message: 'I\'m good, than you.', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 8, senderId: 1, receiverId: 4, message: 'I\'m good, as well. thank you.', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 9, senderId: 4, receiverId: 1, message: 'Hey, azy arrete de m\'parler toi', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 10, senderId: 1, receiverId: 5, message: 'questia zebi', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 11, senderId: 1, receiverId: 5, message: 'Hey, how are you?', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 12, senderId: 6, receiverId: 1, message: 'I\'m good, than you.', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 13, senderId: 1, receiverId: 6, message: 'I\'m good, as well. thank you.', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 14, senderId: 7, receiverId: 1, message: 'Hey, azy arrete de m\'parler toi', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
    Message(id: 15, senderId: 1, receiverId: 7, message: 'questia zebi', dateTime: DateTime.now(), timeString: DateFormat('jm').format(DateTime.now())),
  ];
}
