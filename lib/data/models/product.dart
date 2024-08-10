class Product {
  String title;
  String author;
  String address;
  String urlToImage;
  String publishedAt;
  String price;
  int heartCount;
  int commentsCount;

  Product({
    required this.title,
    required this.author,
    required this.address,
    required this.urlToImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentsCount,
  });
}

// 샘플 데이터
List<Product> productList = [
  Product(
      title: 'Niti toki',
      author: 'author_1',
      urlToImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true',
      publishedAt: 'amasaha 2',
      heartCount: 8,
      price: '35000',
      address: 'nkona',
      commentsCount: 3),
  Product(
      title: 'manara unara 12',
      author: 'author_2',
      urlToImage:
          'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_6.jpg?raw=true',
      publishedAt: 'amasaha 3',
      heartCount: 3,
      address: 'mvuzo',
      price: '18000',
      commentsCount: 1),
  Product(
    title: 'kanadagusi padingi',
    author: 'author_3',
    address: 'birembo',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_5.jpg?raw=true',
    publishedAt: 'umunsi 1',
    heartCount: 0,
    price: '15000',
    commentsCount: 12,
  ),
  Product(
    title: 'gutembera iburayi',
    author: 'author_4',
    address: 'kinyinya',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_4.jpg?raw=true',
    publishedAt: 'iminsi 3',
    heartCount: 4,
    price: '15000',
    commentsCount: 11,
  ),
  Product(
    title: 'kwire ',
    author: 'author_5',
    address: 'kigara',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_3.jpg?raw=true',
    publishedAt: 'icyumweru 1',
    heartCount: 7,
    price: '95000',
    commentsCount: 4,
  ),
  Product(
    title: 'laptop',
    author: 'author_6',
    address: 'gisasa',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_2.jpg?raw=true',
    publishedAt: 'iminsi 5',
    heartCount: 4,
    price: '115000',
    commentsCount: 0,
  ),
  Product(
    title: 'iphone 12 pro max',
    author: 'author_7',
    address: 'masizi',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_3.jpg?raw=true',
    publishedAt: 'iminsi 4',
    heartCount: 2,
    price: '80000',
    commentsCount: 3,
  ),
  Product(
    title: 'Galaxy s21 ultra',
    author: 'author_7',
    address: 'masizi',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true',
    publishedAt: 'iminsi 6',
    heartCount: 178,
    price: '55000',
    commentsCount: 44,
  ),
  Product(
    title: 'macbook pro 2021',
    author: 'author_7',
    address: 'masizi',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_6.jpg?raw=true',
    publishedAt: 'iminsi 2',
    heartCount: 10,
    price: '45000',
    commentsCount: 23,
  ),
  Product(
    title: 'ipad M1',
    author: 'author_7',
    address: 'masizi',
    urlToImage:
        'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_5.jpg?raw=true',
    publishedAt: 'iminsi 9',
    heartCount: 28,
    price: '25000',
    commentsCount: 33,
  ),
];
