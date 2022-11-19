import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:jbgo_application/page/otp.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String dialCodeDigites = "+91";
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0),
              child: Image.asset('assets/images/login.jpeg'),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Phone (OTP)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: (country) {
                  setState(() {
                    dialCodeDigites = country.dialCode!;
                  });
                },
                initialSelection: "IN",
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                favorite: ["+91", "IN"],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(dialCodeDigites),
                    )),
                maxLength: 12,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => otp(
                            phone: _controller.text,
                            codeDigits: dialCodeDigites,
                          )));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
