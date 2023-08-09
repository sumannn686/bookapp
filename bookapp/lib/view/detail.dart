import 'package:flutter/material.dart';
import 'package:bookapp/model/book.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'homePage.dart';

class detailPage extends StatelessWidget {
  final Book book;
  const detailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.network(
              book.imageUrl,
              height: 350,
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(book.rating),
                          Text(
                            book.genre,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Color.fromARGB(255, 144, 175, 243),
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    child: Text(
                      book.detail,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => HomePage(), transition: Transition.zoom);
                      },
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor: Colors.blueGrey),
                          onPressed: () {},
                          child: Text("Read More")),
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pop(); // to go back to the same page
                        },
                        child: Text("More Info"))
                  ],
                )
              ]),
            )
          ],
        ));
  }
}
