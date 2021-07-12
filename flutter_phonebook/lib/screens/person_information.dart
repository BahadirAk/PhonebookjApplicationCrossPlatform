import 'package:flutter/material.dart';
import 'package:flutter_phonebook/data/api/person_api.dart';
import 'package:flutter_phonebook/models/person.dart';
import 'package:http/http.dart';

class PersonInformation extends StatelessWidget {
  Person person;
  PersonInformation(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Text(
                  "Edit",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 17.5),
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
            decoration: InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(color: Colors.white),
            ),
            keyboardType: TextInputType.name,
            initialValue: person.personName,
            style: TextStyle(fontSize: 20, color: Colors.white),
            cursorColor: Colors.white,
          ),
        );
      }

      Widget surnameWidget() {
        return Padding(
          padding: EdgeInsets.only(left: 30, top: 5, right: 30),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Surname",
              labelStyle: TextStyle(color: Colors.white),
            ),
            keyboardType: TextInputType.name,
            initialValue: person.personSurname,
            style: TextStyle(fontSize: 20, color: Colors.white),
            cursorColor: Colors.white,
          ),
        );
      }

      Widget phoneWidget() {
        return Padding(
          padding: EdgeInsets.only(left: 30, top: 5, right: 30),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Number",
              labelStyle: TextStyle(color: Colors.white),
            ),
            keyboardType: TextInputType.phone,
            initialValue: person.telephoneNumber,
            style: TextStyle(fontSize: 20, color: Colors.white),
            cursorColor: Colors.white,
          ),
        );
      }

      Widget notesWidget() {
        return Padding(
          padding: EdgeInsets.only(left: 30, top: 5, right: 30),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Notes",
              labelStyle: TextStyle(color: Colors.white),
            ),
            keyboardType: TextInputType.multiline,
            initialValue: person.notes,
            style: TextStyle(fontSize: 20, color: Colors.white),
            cursorColor: Colors.white,
          ),
        );
      }

}