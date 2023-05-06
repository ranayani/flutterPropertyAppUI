import 'package:flutter/material.dart';
import 'package:propertyapp/Widgets/customized_app_bar.dart';

class PropertyView extends StatelessWidget {
  const PropertyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customizedAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text("Property Screen")),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go To Profile Screen"),
            )
          ],
        ));
  }
}