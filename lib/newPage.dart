import 'package:flutter/material.dart';
import 'package:flutter_tutorial/newPage.dart';

class Newpage extends StatefulWidget {
  const Newpage({Key? key}) : super(key: key);

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.cabin_outlined,color: Colors.brown,)),
        ],
      ),

    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('詳細',style: TextStyle(),)
                  ],

                )

              ],
            )
          ],
        )
    ),
    );

  }
}

