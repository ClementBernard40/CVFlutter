import 'package:flutter/material.dart';
import 'package:cv/data.dart';
class FormScreen extends StatelessWidget {
  const FormScreen({super.key});
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
              itemCount: formation.length,
              itemBuilder: (BuildContext context, int index) {
                final Map item = formation[index];
                
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