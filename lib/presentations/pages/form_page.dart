import 'package:flutter/material.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/categories_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
        title: const Text(
          'Sign Up Page',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                controller: Name,
                validator: (String? text) {
                  if (text == null || text.isEmpty) {
                    return 'invalid Name';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                  controller: Email,
                  validator: (text) {
                    if (text == null ||
                        !text.contains('@') ||
                        text.startsWith('@') ||
                        !text.endsWith('.com') ||
                        text.length < 5) {
                      return 'invalid Email';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  )),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                  controller: Password,
                  validator: (pass) {
                    if (pass == null || pass.length < 6) {
                      return 'invalid Password';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  )),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => categoriesPage(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(43, 42, 41, 0.965)),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
