import 'package:flutter/material.dart';
import 'package:inapp_notification/widgets/top_bar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Theme.of(context).primaryColor, Colors.grey[200]!],
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TopBar(title: "Second Screen"),
              Spacer(),
              Center(child: Text("navigated from notification")),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
