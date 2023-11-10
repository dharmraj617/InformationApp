import 'package:flutter/material.dart';
import 'package:myapp/classes/classes.dart';
import 'package:myapp/widgets/dart_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dart_widgets(
                box: Itemclass(
              title: 'Social Media',
              imagePath: 'images/socials.png',
            )),
            Row(
              children: [
                Expanded(
                    child: dart_widgets(
                        box: Itemclass(
                  title: 'E-Services',
                  imagePath: 'images/app.png',
                ))),
                Expanded(
                    child: dart_widgets(
                        box: Itemclass(
                  title: 'Spaceship',
                  imagePath: 'images/rocket.png',
                )))
              ],
            ),
            dart_widgets(
                box: Itemclass(
              title: 'Cactus',
              imagePath: 'images/cactus.png',
            ))
          ],
        ),
      ),
    );
  }
}
