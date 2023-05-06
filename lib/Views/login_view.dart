import 'package:flutter/material.dart';
import 'package:propertyapp/Views/profile_view.dart';

import '../Widgets/customized_app_bar.dart';
import '../Widgets/customized_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    bool? check1 = true;
    return Scaffold(
      appBar: customizedAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtVwUoQz0A0BFEsRVq4gLh2KMy4l8RCY8ExP9cXDg4xgr1z1u3RmqLRvNLB-DMPNIuIeM&usqp=CAU"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Login to Your Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(
                labelText: "Email", prefixIcon: const Icon(Icons.email)),
            const SizedBox(
              height: 20,
            ),
            customizedTextField(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.remove_red_eye),
                isPassword: true),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: CheckboxListTile(
                value: check1, //unchecked
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? value) {
                  check1 = value;
                },
                title: const Text("Remember me"),
              ),
            ),
            SizedBox(
              width: 450,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileView()));
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 48, 99, 200),
                ),
                child: const Text("Sign in"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Forgot the password?")),
            const SizedBox(
              height: 20,
            ),
            const Text("or continue with"),
          ],
        ),
      ),
    );
  }
}
