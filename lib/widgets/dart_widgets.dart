import 'package:flutter/material.dart';
import 'package:myapp/Pages/info_page.dart';
import 'package:myapp/classes/classes.dart';
import '../core/constants.dart';

class dart_widgets extends StatelessWidget {
  const dart_widgets({
    super.key,
    required this.box,
  });
  final Itemclass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return InfoPage(box: box);
          }),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kdouble10),
          width: double.infinity,
          child: Column(children: [
            const SizedBox(height: kdouble5),
            Image.asset(box.imagePath),
            Text(
              box.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text('More info about ${box.title}'),
            const SizedBox(height: kdouble5)
          ]),
        ),
      ),
    );
  }
}
