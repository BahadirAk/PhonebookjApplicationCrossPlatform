import 'dart:convert';

List<Person> personFromJson(String str) => List<Person>.from(json.decode(str).map((x) => Person.fromJson(x)));

String personToJson(List<Person> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Person {
    Person({
        required this.personId,
        this.personName,
        this.personSurname,
        this.telephoneNumber,
        this.notes,
    });

    int personId;
    String? personName;
    String? personSurname;
    String? telephoneNumber;
    String? notes;

    factory Person.fromJson(Map<String, dynamic> json) => Person(
        personId: json["personId"],
        personName: json["personName"],
        personSurname: json["personSurname"],
        telephoneNumber: json["telephoneNumber"],
        notes: json["notes"] == null ? null : json["notes"],
    );

    Map<String, dynamic> toJson() => {
        "personId": personId,
        "personName": personName,
        "personSurname": personSurname,
        "telephoneNumber": telephoneNumber,
        "notes": notes == null ? null : notes,
    };
}