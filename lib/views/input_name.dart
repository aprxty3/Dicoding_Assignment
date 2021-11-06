import 'package:app_covid/views/main_screen.dart';
import 'package:flutter/material.dart';

class InputName extends StatefulWidget {
  @override
  _InputNameState createState() => _InputNameState();
}

class _InputNameState extends State<InputName> {
  TextEditingController _controller = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.5,
                child: Image.asset('images/covid.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Masukan Nama',
                    errorText: _validate ? 'Harap Masukan Nama' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _controller.text.isEmpty
                        ? _validate = true
                        : _validate = false;
                  });
                  setState(() {
                    _controller.text.isNotEmpty
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                            return MainScreen(
                              nama: _controller.text.toString(),
                            );
                          }))
                        // ignore: unnecessary_statements
                        : null;
                  });
                },
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
