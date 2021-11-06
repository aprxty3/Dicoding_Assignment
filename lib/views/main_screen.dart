import 'package:app_covid/views/statisctics.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String nama;

  const MainScreen({Key key, this.nama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Halo, $nama",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Apakah kamu merasakan sakit?",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Jika iya, berikut adalah beberapa informasi dan tindakan yang dapat anda lakukan jika mengalami gejala seperti covid 19',
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Hubungi",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "119",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          InkWell(
                            child: Card(
                              color: Colors.black,
                              shadowColor: Colors.black,
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                height: 50,
                                width: 150,
                                child: Center(
                                  child: Text(
                                    "Cek data Covid",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DataCovid();
                              }));
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Pencegahan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.4,
              child: Image.asset('images/prevention1.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
