import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final checkBoxTitles = [
    CheckboxState(title: 'Learn programming by 12am'),
    CheckboxState(title: 'Learn how to cook by 1pm'),
    CheckboxState(title: 'Pick up the kids by 2pm'),
    CheckboxState(title: 'Have lunch at 3pm'),
    CheckboxState(title: 'Go visit mum by4pm')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF62D2C3),
            height: 292,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/Ellipse 479.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome Mary!',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
          const Positioned(
              top: -94,
              child: CircleAvatar(
                radius: 94,
                backgroundColor: Color(0xff770e5fffc),
              )),
          const Positioned(
              top: -54,
              left: -66,
              child: CircleAvatar(
                  radius: 94, backgroundColor: Color(0xff70e5fffc))),
          Center(
            child: Image.asset('assets/images/Group 162.png'),
          ),
          const SizedBox(height: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Tasks List',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: const Offset(0, 4),
                      )
                    ]),
                margin: const EdgeInsets.only(right: 20, left: 20),
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Daily tasks',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: Colors.black),
                            )),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: const Icon(
                            Icons.add_circle_outline,
                            color: Color(0xFF56C5B6),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: Scrollbar(
                      thumbVisibility: true,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          ...checkBoxTitles.map(_Checkbox).toList()
                        ]),
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              )
            ],
          )
        ],
      ),
    );
  }

  _Checkbox(CheckboxState checkboxState) {
    return Row(
      children: [
        Checkbox(
            side: const BorderSide(
                color: Colors.black, width: 2, style: BorderStyle.solid),
            activeColor: const Color(0xFF56C5B6),
            checkColor: Colors.transparent,
            value: checkboxState.ischecked,
            onChanged: (bool? value) {
              setState(() {
                checkboxState.ischecked = value;
              });
            }),
        Text(
          checkboxState.title!,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.black),
        )
      ],
    );
  }
}

class CheckboxState {
  String? title;
  bool? ischecked;
  CheckboxState({required this.title, this.ischecked = false});
}
