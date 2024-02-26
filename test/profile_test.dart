import 'dart:io';
import "package:flutter_test/flutter_test.dart";
import 'package:http/http.dart';
import 'package:profile_app_2/API/api.dart';
import 'package:profile_app_2/Models/profile.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'auxilliary.dart';

main() {
  late List<Person> persons;

  test(
      'Given personFromJson, When data is passed to function, Then return List of Person Class',
      () {
    persons = personFromJson(val);
    //Assertions
    expect(persons, isA<List<Person>>());
    expect(persons.length, 1);
    final person = persons[0];
    expect(person.id, 0);
    expect(person.name, 'Elvera Von');
    expect(person.username, 'Jackie.Bashirian');
    expect(person.email, 'Timmothy.Baumbach-McCullough@gmail.com');
    expect(person.phone, '(479) 412-0621');
    expect(person.website, 'hard-to-find-fantasy.biz');

    expect(person.address, isA<Address>());
    expect(person.address.street, '389 MacGyver Hill');
    expect(person.address.suite, '1636');
    expect(person.address.city, 'Conroyboro');
    expect(person.address.zipcode, '34663-6392');
    expect(person.address.geo, isA<Geo>());
    expect(person.address.geo.lat, '-85.1052');
    expect(person.address.geo.lng, '173.9142');

    expect(person.company, isA<Company>());
    expect(person.company.name, 'Lockman - Kerluke');
    expect(person.company.catchPhrase,
        'Super quasi amaritudo ter cunae doloribus trans vapulus facere cohibeo.');
    expect(person.company.bs, 'Claustrum vinum amoveo.');

    expect(person.todos, isA<List<Todo>>());
    expect(person.todos.length, 5);
    expect(person.todos[0].title, 'Casso thesis ultio arcus sit.');
    expect(person.todos[0].completed, false);

    expect(person.todos[1].title,
        'Pariatur copiose curis solutio thymbra stips reprehenderit aegrotatio alveus talis.');
    expect(person.todos[1].completed, false);

    expect(person.todos[2].title,
        'Tardus atrox usque id auctus suppellex xiphias callide.');
    expect(person.todos[2].completed, false);

    expect(person.todos[3].title,
        'Dolore caterva delibero patria tot totam subseco tricesimus.');
    expect(person.todos[3].completed, false);

    expect(person.todos[4].title,
        'Thymbra tametsi cavus tamisium tamquam culpo ubi somniculosus volubilis.');
    expect(person.todos[4].completed, true);
  });

  test(
      'Given personToJson, When data is passed to function, Then return String',
      () {
    persons = personFromJson(val);
    final jsonString = personToJson(persons);

    // Assert
    expect(jsonString, isA<String>());
    expect(jsonString, val);
  });
}
