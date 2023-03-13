import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

// List<String> title = [
//   "6 Minute Grammer",
//   "6 Minute Vocabulary",
//   "6 Minute Vocabulary",
//   "6 Minute English",
//   "6 Minute English",
//   "6 Minute English",
// ];

// List<String> subtitle = [
//   "Future perfect continous",
//   "Academic Vocabulary",
//   "Synonyms",
//   "The future of food",
//   "Crytocurrencies",
//   "Visual Programming"
// ];

class MyAppState extends State<MyApp> {
  int idx = 0; //index yang aktif

  static const List<Center> halaman = [
    Center(child: Text("satu")),
    Center(child: Text("dua")),
    Center(child: Text("tiga")),
  ];

  List<String> gambar = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
  ];
  List<String> title = [
    "video 0",
    "video 1",
    "video 2",
    "video 3",
    "video 4",
    "video 5",
  ];
  List<String> subtitle = [
    "Delete",
    "Delete",
    "Delete",
    "Delete",
    "Delete",
    "Delete"
  ];

  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20, 0, 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 2.0,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(
                        "Downloads",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 2.0,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.orange.shade900,
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 2.0,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: gambar.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(gambar[index]),
                      title: Text(title[index]),
                      subtitle: Text(subtitle[index]),
                      shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: idx,
            selectedItemColor: Colors.red,
            onTap: onItemTap,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "Programme"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "My Learning"),
            ]),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 2'),
            content: const Text(
                'Ayesha Ali Firdaus (ayeshaalifirdaus23@upi.edu) ; Bayu Wicaksono (bwbayuuu@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
