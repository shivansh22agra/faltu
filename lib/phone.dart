

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});
  static String verify = "";
  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  // ignore: non_constant_identifier_names
  TextEditingController CountryCode = TextEditingController();
  var phone = " ";
  @override
  void initState() {
    // TODO: implement initState
    CountryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/otpvector.jpg'),
            const  SizedBox(
                height: 10.0,
              ),
           const   Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            const  SizedBox(
                height: 10.0,
              ),
            const  Text(
                "We need to register your phone before getting started! ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                  const  SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: CountryCode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
               const     Text(
                      "|",
                      style: TextStyle(fontSize: 40, color: Colors.grey),
                    ),
                const    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Phone'),
                      ),
                    )
                  ],
                ),
              ),
            const  SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // await FirebaseAuth.instance.verifyPhoneNumber(
                    //   phoneNumber: CountryCode.text + phone,
                    //   verificationCompleted:
                    //       (PhoneAuthCredential credential) {},
                    //   verificationFailed: (FirebaseAuthException e) {},
                    //   codeSent: (String verificationId, int? resendToken) {
                    //     MyPhone.verify = verificationId;
                    //     Navigator.pushNamed(context, 'otp');
                    //   },
                    //   codeAutoRetrievalTimeout: (String verificationId) {},
                    // );
                     Navigator.pushNamed(context, 'otp');
                  },
                  child:  Text("Send the code"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
