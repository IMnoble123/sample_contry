import 'package:flutter/material.dart';
import 'package:http/http.dart';

class City extends StatelessWidget {
  const City({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    void selectCity()async {
     try {
       await get(Uri.parse(' https://beta.srdv.in/interview/dashboard/CityList'));
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () => selectCity, icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
