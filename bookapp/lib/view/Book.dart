import 'package:bookapp/model/book.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bookData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10),
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      bookData[index].imageUrl,
                      fit: BoxFit.fill,
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Text(bookData[index].title),
                  Text(bookData[index].genre),
                ],
              ),
            );
          }),
    );
  }
}
