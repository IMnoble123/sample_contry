import 'dart:convert';

import 'package:apisecond/view/pages/state_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void call() async {
      try {
        Response response = await get(
            Uri.parse('https://beta.srdv.in/interview/dashboard/CountryList'));

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body.toString());
          print(data['token']);
        } else {
          print('failed');
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Api Sample',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextButton(
                  onPressed: () => call(),
                  child: const Text(
                    'sign in',
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const StatePage()));
                },
                icon: const Icon(Icons.next_plan))
          ],
        )),
      ),
    );
  }
}
