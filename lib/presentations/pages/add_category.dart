import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/presentations/pages/categories_page.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController name = TextEditingController();
  int id = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 27, 27),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
          title: Text(
            'Add Category',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Form(
          key: key,
          child: ListView(
            children: [
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Category',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                   ),
                ),
               style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    id++;
                    category.add(Category(name.text, Colors.tealAccent, id));
                    print(id);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => categoriesPage()));
                },
                child: Text('Save Category',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ));
  }
}
