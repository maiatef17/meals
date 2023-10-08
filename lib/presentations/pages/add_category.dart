import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/category_local_data_source/category_local_data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/presentations/pages/categories_page.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController name = TextEditingController();
  Color selectedColor = Colors.deepPurple;
  int id = Random().nextInt(1000);
  CategoryLocalDSImpl categoryDS = CategoryLocalDSImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 27, 27),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromRGBO(43, 42, 41, 0.965),
          title: const Text(
            'Add Category',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Form(
          key: key,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              TextFormField(
                controller: name,
                validator: (String? text) {
                  if (text == null || text.isEmpty) {
                    return 'field is required';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  labelText: 'Category',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Color:',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title: const Text('Select a color'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ColorPicker(
                                    pickerColor: selectedColor,
                                    onColorChanged: (Color color) {
                                      setState(() {
                                        selectedColor = color;
                                      });
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ));
                        },
                      );
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: selectedColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    id++;
                    categoryDS
                        .addCategory(Category(name.text, selectedColor, id));
                    print(id);
                    ;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const categoriesPage()));
                  }
                },
                child: const Text(
                  'Save Category',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
