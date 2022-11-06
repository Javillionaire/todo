import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  child: Image.asset(
                      'assets/images/undraw_mobile_ux_re_59hr 1.png')),
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Get things done with TODO',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 120,
                width: 250,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere gravida purus id eu condimentum est diam quam. Condimentum blandit diam.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 110,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: const Color(0xFF62D2C3),
                  height: 60,
                  minWidth: 340,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  )),
              const SizedBox(
                height: 84,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
