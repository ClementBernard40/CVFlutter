import 'package:cv/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpScreen extends StatelessWidget {
  const ExpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      padding: const EdgeInsets.all(58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: experience.length,
              itemBuilder: (BuildContext context, int index) {
                final Map item = experience[index];
                
                return ListTile(
                  leading: Image.asset(item['img']),
                  title: Text(item['name']),
                  subtitle: Text(item['description']),
                );
              },
            ),
          )


        ],
      )
    );
  }
}