import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 72, 38, 187)),
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        // backgroundColor: Color.fromRGBO(103, 64, 202, 1),
      ),
      body: Image.asset(
        "image/Bas.jpg"
      ),
      // body: Padding(
      //   padding: const EdgeInsets.only(left: 16, right: 16),
      //   child: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         ClipRRect(
      //           borderRadius: BorderRadius.all(
      //             Radius.circular(100),
      //           ),
      //           child: Image.asset(
      //             "image/Bas.jpg",
      //             height: 200,
      //             width: 200,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         const SizedBox(height: 16),
      //         const Text(
      //           "Abbas leenud",
      //           style: TextStyle(fontSize: 24),
      //         ),
      //         Row(
      //           children: [
      //             const Icon(Icons.calendar_month_outlined, size: 30),
      //             const SizedBox(
      //               width: 8,
      //             ),
      //             Text(DateTime.now().toString()),
      //           ],
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             itemPost(1000),
      //             itemPost(2000),
      //             itemPost(500),
      //           ],
      //         ),
      //         const SizedBox(height: 16),
      //         ElevatedButton(
      //           onPressed: () {
      //             debugPrint("ElevatedButton");
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const MyHomePage(title: "หน้าหลัก"),
      //               ),
      //             );
      //           },
      //           child: const Text("Go Home Page"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Column itemPost(int number) {
    return Column(children: [Text("$number"), const Text("Total Posts")]);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Number:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
