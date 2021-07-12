import 'package:flutter/material.dart';
import 'package:flutter_phonebook/data/api/person_api.dart';
import 'package:flutter_phonebook/models/person.dart';
import 'package:flutter_phonebook/screens/add_person.dart';
import 'package:flutter_phonebook/screens/person_information.dart';
import 'package:flutter_phonebook/screens/person_information.dart';

class Contacts extends StatefulWidget {
  @override
  _Contacts createState() => _Contacts();
}

class _Contacts extends State<Contacts> {
  List<Person> personList = [];

  void initState() {
    getAllFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[titleWidget(context), listWidget()],
    );
  }

  Widget listWidget() {
    return Expanded(
      child: ListView.builder(
          itemCount: personList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  personList[index].personName![0] +
                      personList[index].personSurname![0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                personList[index].personName! +
                    " " +
                    personList[index].personSurname!,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonInformation(personList[index])));
              },
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Colors.blueAccent,
                  )),
            );
          }),
    );
  }

  Widget titleWidget(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        color: Colors.black87,
        child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Text(
                "Groups",
                style: TextStyle(color: Colors.blueAccent, fontSize: 15.5),
              ),
              iconSize: 50,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                "Contacts",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddPerson()));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.blueAccent,
                ))));
  }

  void getAllFromApi() {
    PersonApi.getAll().then((response) => {
          setState(() {
            this.personList = personFromJson(response.body);
          })
        });
  }
}
