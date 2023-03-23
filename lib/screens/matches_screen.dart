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
              )
            ],
          ),
        ),
      ),
    );
  }
}
