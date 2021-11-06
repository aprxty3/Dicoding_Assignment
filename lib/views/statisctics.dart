import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DataCovid extends StatelessWidget {
  DataCovid dataCovid;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.3,
            color: Colors.white,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      width: size.width * 0.7,
                      height: 200,
                      child: Image.asset('images/stopcovid1.jpg')),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Lawan \nCovid-19",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 10, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Update Kasus COVID - 19",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                      "8 Agustus 2021",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: size.width * 0.4,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.indigo[900],
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3,666,031",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Terkonfirmasi",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("+26,415 Kasus",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: size.width * 0.4,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.yellow[700],
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "474,233",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Kasus Aktif",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("-23,591 Kasus",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: size.width * 0.4,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.green[700],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3,084,702",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Sembuh",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("+48,508 Kasus",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shadowColor: Colors.black,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: size.width * 0.4,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "107,096",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Meninggal",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("+1,498 Kasus",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
