import 'package:flutter/material.dart';

class Customkoko extends StatelessWidget {
  final String? title;
  final String? body;
  const Customkoko({super.key, this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 30, left: 10),
        child: InkWell(
          child: Column(
            children: [
              Card(
                color: Colors.blue,
                elevation: 6,
                margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title ?? "",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff303030),
                      ),
                    ),
                    Divider(),
                    Text(
                      body ?? "" * 20,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff303030),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
