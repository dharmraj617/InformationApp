import 'package:flutter/material.dart';
import 'package:myapp/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 80,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Dharmraj Patil'),
          ),
          ListTile(
            leading: Icon(Icons.mail_rounded),
            title: Text('pdharm2000@yahoo.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Bangalore, India.'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            isDarkmodeNotifier.value = !isDarkmodeNotifier.value;
          },
          child: ValueListenableBuilder(
            valueListenable: isDarkmodeNotifier,
            builder: (context, isDark, child) {
              if (!isDark) {
                return const Icon(Icons.dark_mode_sharp);
              } else {
                return const Icon(Icons.light_mode_rounded);
              }
            },
          )),
    );
  }
}
