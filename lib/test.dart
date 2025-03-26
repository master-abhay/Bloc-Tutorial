import 'package:bloc_tutorial/core/services/navigation_services/navigation_services.dart';
import 'package:bloc_tutorial/core/services/navigation_services/route_names.dart';
import 'package:bloc_tutorial/models/freezed_example/user_model.dart';
import 'package:flutter/material.dart';

import 'core/services/navigation_services/routes.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {

  final userModelJson =   {
    "id": 1,
    "name": 'Abhay Kumar',
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test View"),),
      floatingActionButton: FloatingActionButton(onPressed: (){

        NavigationServices.instance.pushNamed(route: RouteNames.loginView);


        // final personModel = UserModel.fromJson(userModelJson);
        //
        // print("Id: ${personModel.id}");
        // print("Address: ${personModel.address.geo.lat}");







      },),
    );
  }
}
