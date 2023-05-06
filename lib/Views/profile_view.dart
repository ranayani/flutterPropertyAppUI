import 'package:flutter/material.dart';
import 'package:propertyapp/Views/Property_view.dart';
import 'package:propertyapp/Widgets/customized_app_bar.dart';

import '../Widgets/customized_text_field.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customizedAppBar(title: "Fill Your Profile"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtVwUoQz0A0BFEsRVq4gLh2KMy4l8RCY8ExP9cXDg4xgr1z1u3RmqLRvNLB-DMPNIuIeM&usqp=CAU"),
            ),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(labelText: "Full Name"),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(labelText: "Nickname"),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(
                labelText: "Date of Birth",
                suffixIcon: const Icon(Icons.calendar_month)),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(
                labelText: "Email", suffixIcon: const Icon(Icons.email)),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(
                labelText: "Gender",
                suffixIcon: const Icon(Icons.arrow_drop_down)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 450,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PropertyView()));
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 48, 99, 200),
                ),
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
