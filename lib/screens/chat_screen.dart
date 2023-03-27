import 'package:dating_app/models/models.dart';
import 'package:dating_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chat';
  final UserMatch userMatch;

  static Route route({required UserMatch userMatch}) {
    return MaterialPageRoute(
      builder: ((context) => ChatScreen(userMatch: userMatch)),
      settings: const RouteSettings(name: routeName),
    );
  }

  const ChatScreen({super.key, required this.userMatch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(userMatch.matchedUser.imageUrls[0]),
                  ),
                  Text(
                    userMatch.matchedUser.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 60,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: userMatch.chat != null
            ? Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: userMatch.chat![0].messages.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                        title: userMatch.chat![0].messages[index].senderId == 1
                            ? Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Theme.of(context).colorScheme.background),
                                  child: Text(
                                    userMatch.chat![0].messages[index].message,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                            : Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(userMatch.matchedUser.imageUrls[0]),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Theme.of(context).colorScheme.primary),
                                      child: Text(
                                        userMatch.chat![0].messages[index].message,
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                  }),
                ),
              )
            : Container(),
      ),
    );
  }
}
