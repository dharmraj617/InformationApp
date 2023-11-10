import 'package:flutter/material.dart';
import 'package:myapp/classes/classes.dart';
import 'package:myapp/constants.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key, required this.box});
  final Itemclass box;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  double fontSizeCustom = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: Text(widget.box.title),
        actions: [
          IconButton(
            onPressed: () => {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Info Icon'),
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,

                ),
              ),
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: 15,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 25;
                        });
                      },
                      child: const Text('Small Title')),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 50;
                        });
                      },
                      child: const Text('Medium Title')),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 75;
                        });
                      },
                      child: const Text('Large Title')),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 100;
                        });
                      },
                      child: const Text('Huge Title'))
                ],
              ),
              FittedBox(
                child: Text(widget.box.title,
                    style: TextStyle(
                        fontSize: fontSizeCustom, fontWeight: FontWeight.bold)),
              ),
              const Text(
                info_app,
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                info_app,
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
