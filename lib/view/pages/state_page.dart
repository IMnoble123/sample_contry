import 'package:apisecond/view/pages/select%20_city.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class StatePage extends StatelessWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void select() {
      try {
        get(Uri.parse('https://beta.srdv.in/interview/dashboard/StateList'));
        print('State added');
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
                onPressed: () => select(), child: const Text('select state')),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) =>const  City()));
                },
                child: const Text('next'))
          ],
        ),
      ),
    );
  }
}
