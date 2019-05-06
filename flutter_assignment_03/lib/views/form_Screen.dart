import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/controller/controller.dart';

class form_screen extends StatelessWidget {
  FirebaseFirestoreService todo = new FirebaseFirestoreService();
  final myController = TextEditingController();
  static final _formkey = GlobalKey<FormState>();
  String title = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('New Subject'),
        centerTitle: true,
      ),
      body: Container(
          child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      // controller: myController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Subject :",
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please fill Subject";
                        } else {
                          title = value;
                        }
                      },
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.black),
                      ),
                      color: Colors.white,
                      splashColor: Colors.blueGrey,
                      onPressed: () {
                        _formkey.currentState.validate();
                        if (title.length > 0) {
                          Firestore.instance
                              .collection('todo')
                              .add({'title': title, 'done': false});
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                ],
              ))),
    );
  }
}
