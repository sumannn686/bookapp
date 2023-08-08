final data = [
  {
    'title': 'To Kill a Mocking Bird',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/440px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'Thriller'
  },
  {
    'title': 'Harry Potter',
    'imageUrl':
        'https://m.media-amazon.com/images/I/91eopoUCjLL._SL828_.jpg',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐',
    'genre': 'Drama'
  },
  {
    'title': 'To Kill a Mocking Bird',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/440px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'Thriller'
  },
  {
    'title': 'To Kill a Mocking Bird',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/440px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'Thriller'
  }
];

class Book {
  final String imageUrl;
  final String title;
  final String detail;
  final String rating;
  final String genre;

  Book(
      {required this.detail,
      required this.genre,
      required this.imageUrl,
      required this.rating,
      required this.title});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        detail: json['detail'],
        genre: json['genre'],
        imageUrl: json['imageUrl'],
        rating: json['rating'],
        title: json['title']);
  }
}

final bookData = data.map((e) => Book.fromJson(e)).toList();
