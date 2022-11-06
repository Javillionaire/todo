import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE5E5E5),
      body: Stack(children: [
        const Positioned(
            top: -94,
            child: CircleAvatar(
              radius: 94,
              backgroundColor: Color(0xff708fe1d7),
            )),
        const Positioned(
            top: -54,
            left: -66,
            child:
                CircleAvatar(radius: 94, backgroundColor: Color(0xff708fe1d7))),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Welcome Onboard!',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Let\'s help you to completing your tasks!',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 50,
              ),
              const _wdgetTextField(
                labelText: 'Full name',
                hintText: 'Marry Elliot',
              ),
              const SizedBox(
                height: 10,
              ),
              const _wdgetTextField(
                labelText: 'Email',
                hintText: 'mary.elliot@gmail.com',
              ),
              const SizedBox(
                height: 10,
              ),
              const _wdgetTextField(
                labelText: 'Password',
                hintText: '**************',
              ),
              const SizedBox(
                height: 10,
              ),
              const _wdgetTextField(
                labelText: 'Confirm Password',
                hintText: '**************',
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: const Color(0xFF62D2C3),
                  height: 60,
                  minWidth: 340,
                  onPressed: () {},
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Already have account?',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signin');
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF62D2C3),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 51,
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class _wdgetTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  const _wdgetTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            labelText!,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 15),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          height: 50,
          width: 340,
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff80000000),
                  fontSize: 15),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
