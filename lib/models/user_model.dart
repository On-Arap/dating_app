import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    const User(
        id: 1,
        name: 'Ashe',
        age: 25,
        imageUrls: [
          "https://static.wikia.nocookie.net/leagueoflegends/images/b/b8/Ashe_OriginalCentered.jpg/revision/latest/scale-to-width-down/1280?cb=20180414201913",
          "https://www.gamosaurus.com/wp-content/uploads/League-of-Legends/Guides/S10/Vignettes/guide-lol-s10-stuff-build-sort-objet-competence-comment-jouer-ashe-support.jpg",
          "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ashe_17.jpg",
        ],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 2,
        name: 'Ahri',
        age: 26,
        imageUrls: [
          "https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt1259276b6d1efa78/5db05fa86e8b0c6d038c5ca2/RiotX_ChampionList_ahri.jpg?quality=90&width=250",
          "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ahri_66.jpg",
          "https://rare-gallery.com/mocahbig/1389573-League-of-Legends-LoL-Video-Game-Ahri.jpg",
        ],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 3,
        name: 'Camille',
        age: 35,
        imageUrls: [
          "https://liquipedia.net/commons/images/f/fa/League_Infobox_Camille.jpg",
          "https://rare-gallery.com/uploads/posts/324168-Camille-LoL-Art-4K-iphone-wallpaper.jpg",
          "https://i.pinimg.com/originals/d9/d1/73/d9d173fa32687c5b6a19c091f23f3955.jpg",
        ],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 4,
        name: 'Orianna',
        age: 205,
        imageUrls: [
          "https://liquipedia.net/commons/images/9/93/Orianna_Large.png",
          "https://i.pinimg.com/originals/68/20/94/6820941be4eb4a9f1b6e2996d0e6ac8f.jpg",
          "https://static.wikia.nocookie.net/leagueoflegends/images/7/74/Orianna_Fieram.jpg/revision/latest?cb=20161215102830",
        ],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 5,
        name: 'Cassiopeia',
        age: 40,
        imageUrls: [
          "https://lolskinshop.com/wp-content/uploads/2019/11/Cassiopeia_0.jpg",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Cassiopeia_18.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Cassiopeia_9.webp",
        ],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  ];
}
