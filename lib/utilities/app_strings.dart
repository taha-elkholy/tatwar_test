import 'package:tatware_test/model/chat_message.dart';
import 'package:tatware_test/model/expert_man.dart';
import 'package:tatware_test/model/job.dart';

class AppStrings {
  // Assets Names
  static const String startBackgroundImage = 'assets/images/start_bg.png';
  static const String getStartImage = 'assets/images/get_start_image.png';
  static const String getStartPathImage = 'assets/images/path.png';
  static const String chatBubble = 'assets/images/chat.png';
  static const String messageSeen = 'assets/images/message_seen.png';
  static const String mic = 'assets/images/mic.png';
  static const String send = 'assets/images/send.png';
  static const String profile = 'assets/images/profile.png';
  static const String profile1 = 'assets/images/profile1.png';
  static const String profile2 = 'assets/images/profile2.png';
  static const String search = 'assets/images/search.png';
  static const String heart = 'assets/images/heart.png';
  static const String star = 'assets/images/star.png';

  static const String informationTechnology =
      'assets/images/information_technology.png';
  static const String supplyChain = 'assets/images/supply_chain.png';
  static const String security = 'assets/images/security.png';
  static const String humanResource = 'assets/images/human_resource.png';
  static const String immigration = 'assets/images/immigration.png';
  static const String translation = 'assets/images/translation.png';

  static const String homeIcon = 'assets/icons/home_icon.png';
  static const String favIcon = 'assets/icons/fav_icon.png';
  static const String walletIcon = 'assets/icons/wallet_icon.png';
  static const String profileIcon = 'assets/icons/profile_icon.png';

  // Strings
  static const String oranos = 'Oranos';
  static const String expertFromEveryPlanet = 'Expert From Every Planet';
  static const String getStarted = 'Get Started';
  static const String doNotHaveAccount = 'Don’t have an account? ';
  static const String signUp = 'SignUp';
  static const String english = 'English';

  static const String getStartPageText1 = 'Hi, My name is ';
  static const String getStartPageText2 = 'Oranobot\n';
  static const String getStartPageText3 =
      'I will always be there to\nhelp and assist you.\n\nSay Start To go to Next.';
  static const String next = 'Next';
  static const String sayDone = 'Say Done, Or Press Send to Apply';
  static const String typeSomething = 'Type something…';
  static const String recommendedExperts = 'Recommended Experts';
  static const String onlineExperts = 'Online Experts';

  static String getExpertCount(int numberOfExperts) =>
      '$numberOfExperts Expert';

  static const List<ChatMessage> messages = [
    ChatMessage(text: 'Hi, Whats You Name Firstname?', isSent: false),
    ChatMessage(text: 'Abdalla', isSent: true),
    ChatMessage(text: 'Ok, Abdalla Whats Your Lastname?', isSent: false),
    ChatMessage(text: 'Salah', isSent: true),
    ChatMessage(text: 'Mr Abdalla Salah, What\'s your Title? ', isSent: false),
    ChatMessage(text: 'Front-end Developer', isSent: true),
    ChatMessage(
        text: 'What Categories you will need expert In?', isSent: false),
  ];

  static List<String> checkMessagesList = [
    'Security',
    'Supply Chain',
    'Information Technology',
    'Human Resource',
    'Business Research'
  ];

  static List<ExpertMan> experts = const [
    ExpertMan(
        name: 'Karim Adel',
        specialization: 'Supply Chain',
        image: profile1,
        rating: 5.0),
    ExpertMan(
        name: 'Merna Adel',
        specialization: 'Supply Chain',
        image: profile2,
        rating: 4.9),
  ];

  static List<String> names = ['Lance', 'Niles', 'Samuel', 'Hilary', 'Hanson'];

  static List<Job> jobs = const [
    Job(
        title: 'Information Technology',
        image: informationTechnology,
        numberOfExperts: 23),
    Job(title: 'Supply Chain', image: supplyChain, numberOfExperts: 12),
    Job(title: 'Security', image: security, numberOfExperts: 14),
    Job(title: 'Human Resource', image: humanResource, numberOfExperts: 8),
    Job(title: 'Immigration', image: immigration, numberOfExperts: 18),
    Job(title: 'Translation', image: translation, numberOfExperts: 3),
  ];
}
