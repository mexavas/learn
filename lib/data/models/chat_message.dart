class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUri,
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
      sender: 'Byose',
      profileImage: 'https://xsgames.co/randomusers/avatar.php?g=male',
      location: 'nkona',
      sendDate: 'umunsi 1',
      message: 'Ndashaka kugurisha.'),
  ChatMessage(
      sender: 'Karemera',
      profileImage: 'https://xsgames.co/randomusers/avatar.php?g=female',
      location: 'mvuzo',
      sendDate: 'iminsi 2',
      message: 'Nabitanze'),
  ChatMessage(
      sender: 'Mahirwe',
      profileImage: 'https://xsgames.co/randomusers/assets/avatars/male/15.jpg',
      location: 'gisasa',
      sendDate: 'iminsi 2',
      message: 'ndaza kuguhamagara.'),
  ChatMessage(
      sender: 'Mahoro',
      profileImage:
          'https://xsgames.co/randomusers/assets/avatars/female/14.jpg',
      location: 'birembo',
      sendDate: 'iminsi 3',
      message: 'Nahageze!'),
  ChatMessage(
      sender: 'Keza',
      profileImage: 'https://xsgames.co/randomusers/assets/avatars/male/16.jpg',
      location: 'kigara',
      sendDate: 'iminsi 3',
      message: 'wangabanyiza?'),
  ChatMessage(
      sender: 'James',
      profileImage: 'https://xsgames.co/randomusers/assets/avatars/male/18.jpg',
      location: 'kinyinya',
      sendDate: 'iminsi ine',
      message: '5000rwf byavamo?'),
  ChatMessage(
      sender: 'Jack',
      profileImage:
          'https://xsgames.co/randomusers/assets/avatars/female/16.jpg',
      location: 'masizi',
      sendDate: 'iminsi 4',
      message: 'hi, can u speak english?'),
];
