import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> interests;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.interests,
    required this.bio,
    required this.jobTitle,
  });

  @override
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    const User(
        id: 1,
        name: 'Ashe',
        age: 25,
        imageUrls: [
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Ashe_0.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Ashe_1.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Ashe_7.webp",
        ],
        interests: ["Music", "Farm", "Damages"],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 2,
        name: 'Ahri',
        age: 26,
        imageUrls: [
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Ahri_0.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Ahri_42.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Ahri_66.webp",
        ],
        interests: ["Music", "Farm", "Damages"],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 3,
        name: 'Camille',
        age: 35,
        imageUrls: [
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Camille_0.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Camille_10.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Camille_11.webp",
        ],
        interests: ["Music", "Farm", "Damages"],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 4,
        name: 'Orianna',
        age: 205,
        imageUrls: [
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Orianna_0.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Orianna_3.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Orianna_8.webp",
        ],
        interests: ["Music", "Farm", "Damages"],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 5,
        name: 'Cassiopeia',
        age: 40,
        imageUrls: [
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Cassiopeia_0.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Cassiopeia_18.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Cassiopeia_9.webp",
        ],
        interests: ["Music", "Farm", "Damages"],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    const User(
        id: 6,
        name: 'Lux',
        age: 23,
        imageUrls: [
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Lux_0.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Lux_14.webp",
          "https://lol-skin.weblog.vc/img/wallpaper/loading/Lux_42.webp",
        ],
        interests: ["Music", "Farm", "Damages"],
        jobTitle: 'Job title',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  ];
}
