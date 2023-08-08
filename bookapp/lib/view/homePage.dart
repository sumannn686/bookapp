import 'package:bookapp/view/Book.dart';
import 'package:bookapp/view/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/model/book.dart';
import 'package:get/get.dart';

import 'package:get/get_navigation/get_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: Colors.black,
          elevation: 0,
          backgroundColor: Colors.white,
          //backgroundColor: Colors.lime.withOpacity(0.5),
          // backgroundColor: Color(0xFFA963A6),
          // foregroundColor: Colors.white,
          //   backgroundColor: Color.fromRGBO(255, 255, 150, 0.5),
          //  backgroundColor: Color.fromARGB(, 255, 255, 150),
          title: Text('Hi John,'),
          actions: [
            Icon(CupertinoIcons.search),
            SizedBox(
              width: 5,
            ),
            Icon(CupertinoIcons.bell),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://images.unsplash.com/photo-1691030133693-84d7bbec65a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
                  fit: BoxFit.fill,
                )),
            Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bookData.length,
                    itemBuilder: (context, index) {
                      final book = bookData[index];
                      return InkWell(
                        onTap: () {
                          Get.to(() => detailPage(book: book),
                              transition: Transition.zoom);
                        },
                        child: Container(
                          width: 360,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Card(
                                  child: Container(
                                    height: 150,
                                    width: 360,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4, vertical: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  book.title,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  book.detail,
                                                  maxLines: 4,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color:
                                                          Colors.grey.shade700,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(book.rating),
                                                    Text(
                                                      book.genre,
                                                      style: TextStyle(
                                                          color: Colors.teal),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 15,
                                  bottom: 10,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        book.imageUrl,
                                        height: 190,
                                        width: 125,
                                        fit: BoxFit.cover,
                                      ))),
                            ],
                          ),
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You may also like',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  )),
            ),
            BookWidget()
          ],
        ));
  }
}
