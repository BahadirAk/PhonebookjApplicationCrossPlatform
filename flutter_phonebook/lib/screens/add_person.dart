import 'package:flutter/material.dart';
import 'package:flutter_phonebook/data/api/person_api.dart';
import 'package:flutter_phonebook/models/person.dart';

class AddPerson extends StatelessWidget {
  // TextEditingController? nameController = TextEditingController();
  // TextEditingController? surnameController = TextEditingController();
  // TextEditingController? telephoneController = TextEditingController();
  // TextEditingController? notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "New Contact",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              // updateUsingApi();
            },
            icon: Text(
              "Save",
              style: TextStyle(color: Colors.blueAccent, fontSize: 16.3),
            ),
            padding: EdgeInsets.only(right: 20),
            iconSize: 35,
          )
        ],
      ),
      body: Column(
        children: [
          avatarWidget(),
          nameWidget(),
          surnameWidget(),
          phoneWidget(),
          notesWidget()
        ],
      ),
    );
  }

  Widget avatarWidget() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://w7.pngwing.com/pngs/336/946/png-transparent-avatar-user-medicine-surgery-patient-avatar-face-heroes-head.png"),
          radius: 50),
    );
  }

  Widget nameWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 10, right: 30),
      child: TextFormField(
        // controller: nameController,
        decoration: InputDecoration(
          labelText: "Name",
          labelStyle: TextStyle(color: Colors.white),
        ),
        keyboardType: TextInputType.name,
        initialValue: "",
        style: TextStyle(fontSize: 20, color: Colors.white),
        cursorColor: Colors.white,
      ),
    );
  }

  Widget surnameWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 5, right: 30),
      child: TextFormField(
        // controller: surnameController,
        decoration: InputDecoration(
          labelText: "Surname",
          labelStyle: TextStyle(color: Colors.white),
        ),
        keyboardType: TextInputType.name,
        initialValue: "",
        style: TextStyle(fontSize: 20, color: Colors.white),
        cursorColor: Colors.white,
      ),
    );
  }

  Widget phoneWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 5, right: 30),
      child: TextFormField(
        // controller: telephoneController,
        decoration: InputDecoration(
          labelText: "Number",
          labelStyle: TextStyle(color: Colors.white),
        ),
        keyboardType: TextInputType.phone,
        initialValue: "",
        style: TextStyle(fontSize: 20, color: Colors.white),
        cursorColor: Colors.white,
      ),
    );
  }

  Widget notesWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 5, right: 30),
      child: TextFormField(
        // controller: notesController,
        decoration: InputDecoration(
          labelText: "Notes",
          labelStyle: TextStyle(color: Colors.white),
        ),
        keyboardType: TextInputType.multiline,
        initialValue: "",
        style: TextStyle(fontSize: 20, color: Colors.white),
        cursorColor: Colors.white,
      ),
    );
  }

  // void updateUsingApi() {
  //   var data = {
  //     "name": nameController?.value,
  //     "surname": surNameController?.value,
  //     "telephone": telephoneController?.value,
  //     "notes": notesController?.value
  //   };
  //   PersonApi.update().then((data) => personToJson(data));
  // }
}
