class RecommendStore {
  String storeName;
  String location;
  String description;
  int commentCount;
  int likeCount;
  String comment;
  String commentUser;
  List storeImages;

  RecommendStore({
    required this.storeName,
    required this.location,
    required this.description,
    required this.commentCount,
    required this.likeCount,
    required this.comment,
    required this.commentUser,
    required this.storeImages,
  });
}

final List searchKeyword = [
  'cantine',
  'ishuri',
  'kwimuka',
  'cafe',
  'butike',
  'saloon',
  'restaurant'
];

List<RecommendStore> recommendStoreList = [
  RecommendStore(
      storeName: 'Keza Nails',
      location: 'masizi',
      description: 'inzara zirabagirana.',
      commentCount: 1,
      likeCount: 8,
      commentUser: 'cynthia',
      comment:
          'bankoreye inzara neza nkava nishimye, ikindi serivise yaho ninziza cyane!!!.',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_1_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_1_2.jpg?raw=true',
      ]),
  RecommendStore(
      storeName: 'Ryoherwa restaurant',
      location: 'birembo',
      description: 'burya umunezero uherera kubiryo biryoshye.',
      commentCount: 2,
      likeCount: 2,
      commentUser: 'kabebe',
      comment:
          'ubundi biragora kunyemeza iyo bigeze kubiryo ariko aha ho naremeye.',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_2_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_2_2.jpg?raw=true',
      ]),
  RecommendStore(
      storeName: 'Vuga English Academy',
      location: 'nkona',
      description: 'kuvuga uruzungu ntawe bitabera',
      commentCount: 7,
      likeCount: 1,
      commentUser: 'kanakuze',
      comment:
          'narinziko bitashoka kwiga uruzungu ushaje ariko hamwe na vuga english academy ntakidashoboka koko!!!.',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_3_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_3_2.jpg?raw=true',
      ]),
  RecommendStore(
      storeName: 'Igitondo Cantine',
      location: 'Kigara',
      description: 'uvunguro rya mugitondo niryo rigena umunsi',
      commentCount: 11,
      likeCount: 5,
      commentUser: 'bwiza',
      comment:
          'njye numugabo wanjye nutugipfa ko nazi gutungany ikayi, kuza hano buri gitondo tukifata neza.',
      storeImages: [
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_4_1.jpg?raw=true',
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_store_4_2.jpg?raw=true',
      ])
];
