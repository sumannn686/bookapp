final data = [
  {
    'title': 'Mocking Bird',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/440px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'Thriller'
  },
  {
    'title': 'Harry Potter',
    'imageUrl': 'https://m.media-amazon.com/images/I/91eopoUCjLL._SL828_.jpg',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐',
    'genre': 'Drama'
  },
  {
    'title': 'Karnali Blues',
    'imageUrl':
        'https://tse2.mm.bing.net/th?id=OIP.CG97RHvhxnU5NK2jRVNwWAHaK9&pid=Api&P=0&h=220',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'LifeStyle'
  },
  {
    'title': 'Bhagavat Gita',
    'imageUrl':
        'https://tse3.mm.bing.net/th?id=OIP.E2ndrBfA7QOmFJQOdzst8wHaNI&pid=Api&P=0&h=220',
    'detail':
        'I never expected any sort of success with \'Mockingbird.\' ... I was hoping for a quick and merciful death at the hands of the reviewers but, at the same time, I sort of hoped someone would like it enough to give me encouragement. Public encouragement. ',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'Self help'
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
