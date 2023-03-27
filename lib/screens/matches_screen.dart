import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widget/widgets.dart';

class MatchesScreen extends StatelessWidget {
  static const String routeName = '/matches';

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => MatchesScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final inactiveMatches = UserMatch.matches.where((match) => match.userId == 1 && match.chat!.isEmpty).toList();
    final activeMatches = UserMatch.matches.where((match) => match.userId == 1 && match.chat!.isNotEmpty).toList();

    return Scaffold(
      appBar: CustomAppBar(title: 'MATCHES'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your likes', style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: inactiveMatches.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        UserImgSmall(
                          height: 70,
                          width: 70,
                          img: inactiveMatches[index].matchedUser.imageUrls[0],
                        ),
                        Text(
                          inactiveMatches[index].matchedUser.name,
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text('Your Chats', style: Theme.of(context).textTheme.headlineSmall),
              ListView.builder(
                shrinkWrap: true,
                itemCount: activeMatches.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print('text');
                      Navigator.pushNamed(context, '/chat', arguments: activeMatches[index]);
                    },
                    child: Row(
                      children: [
                        UserImgSmall(
                          height: 70,
                          width: 70,
                          img: activeMatches[index].matchedUser.imageUrls[0],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activeMatches[index].matchedUser.name,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              activeMatches[index].chat![0].messages[0].message,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black54,
                                  ),
                            ),
                            Text(
                              activeMatches[index].chat![0].messages[0].timeString,
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.black54,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
