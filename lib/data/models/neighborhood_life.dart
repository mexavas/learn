class NeighborhoodLife {
  final String category;
  final String profileImgUri;
  final String userName;
  final String location;
  final String content;
  final String contentImgUri;
  final int commentCount;
  final int authCount;
  final String date;

  NeighborhoodLife({
    required this.category,
    required this.profileImgUri,
    required this.userName,
    required this.location,
    required this.content,
    required this.contentImgUri,
    required this.commentCount,
    required this.authCount,
    required this.date,
  });
}

// 샘플 데이터 1
String lifeTitle = 'Ganira nabandi umenye ibibera mu isibo.';

// 샘플 데이터 2
List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: 'Ibibazo',
    profileImgUri:
        'https://picsum.photos/id/871/200/300?grayscale', // TODO 06 수정
    userName: 'Karemera',
    location: 'nkona',
    content: 'Gahunda zo gutora umuyobozi mushya wisibo??\n'
        'nawandusha akamuru yigihe tuzakorera umuyobozi mushya wisibo??.',
    contentImgUri: 'https://picsum.photos/id/872/200/300?grayscale',
    commentCount: 11,
    authCount: 3,
    date: 'iminsi 2',
  ),
  NeighborhoodLife(
    category: 'Amakuru',
    profileImgUri: 'https://picsum.photos/id/873/200/100?grayscale',
    userName: 'Mahirwe',
    location: 'birembo',
    content: 'uziko meddy yaje hano mubirembo??.',
    contentImgUri: 'https://picsum.photos/id/874/200/100?grayscale',
    commentCount: 2,
    authCount: 1,
    date: 'umunsi 1',
  ),
  NeighborhoodLife(
    category: 'Kurangisha',
    profileImgUri: 'https://picsum.photos/id/875/200/100?grayscale',
    userName: 'Rwema',
    location: 'mvuzo',
    content:
        'ndarangisha ibyangombwa byanjye nkeka ko naba narataye hafi yo mu ngara',
    contentImgUri: '',
    commentCount: 11,
    authCount: 8,
    date: 'iminsi 4',
  ),
  NeighborhoodLife(
    category: 'Ishuti',
    profileImgUri: 'https://picsum.photos/id/880/200/100',
    userName: 'Kariza',
    location: 'kinyinya',
    content:
        'Hashije igihe gito nimukiye hano Kinginya ndashaka inshuti yo muri karitsiye  byaba byiza abaye ari umukobwa .',
    contentImgUri: '',
    commentCount: 0,
    authCount: 7,
    date: 'amasaha 2',
  ),
  NeighborhoodLife(
    category: 'Imyidagaduro',
    profileImgUri: 'https://picsum.photos/id/730/200/100?grayscale',
    userName: 'kariza',
    location: 'masizi',
    content: 'hagize undangira hano masizi aho nakurira imyenda ya siporo',
    contentImgUri: 'https://picsum.photos/id/885/200/100',
    commentCount: 11,
    authCount: 2,
    date: 'isaha 1',
  ),
];
