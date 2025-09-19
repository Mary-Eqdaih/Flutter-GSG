import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter = 0;
  String counterKey ="counter";
  // key

  @override
  void initState() {
    super.initState();
    getCounter();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
               setState(() {
                 counter++;
                 saveCounter(counter);
               });
              },
              child: Icon(Icons.add),
            ),
            Text("${counter}"),
            TextButton(
              onPressed: () {
               setState(() {
                 counter--;
                 saveCounter(counter);
               });
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }

  // async → This makes the function asynchronous, because getting SharedPreferences requires waiting for it to load from storage.
  // prefs.setInt(counterKey, counter) → Stores an integer value (counter) with a key (counterKey) in the preferences.
  // counterKey is just a variable (probably a String) that you defined earlier to identify where to save this number. Example: "myCounter".
  saveCounter(int counter)async{
    final prefs =  await SharedPreferences.getInstance();
    prefs.setInt(counterKey, counter);
  }
  // store counter
  // prefs.getInt(counterKey) → Reads the value stored with that key.
  // If nothing was saved before, it will return null.
  getCounter()async{
    final prefs = await  SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt(counterKey) ?? 0;
    });
  }
}
// getInt Nullable ... if nothing saved in the key returns null

// How they work together
//
// saveCounter(5); → Saves the number 5 in storage.
//
// getCounter(); → Retrieves the number 5 later, even after the app restarts.