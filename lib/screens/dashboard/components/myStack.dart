import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: 5,
              width: double.infinity / 2,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              height: 5,
              width: double.infinity / 2,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
