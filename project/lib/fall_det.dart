import 'package:flutter/material.dart';
import 'package:project/provider/control.dart';
import 'package:provider/provider.dart';

class FallDetection extends StatelessWidget {
  const FallDetection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fall Detection"),
        backgroundColor:
            Color.fromARGB(255, 163, 93, 66), // Change the color as desired
      ),
      backgroundColor: Colors.white, // Change the color as desired
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Color.fromARGB(255, 163, 93, 66), // Border color
            //       width: 1.0, // Border width
            //     ),
            //     // borderRadius: BorderRadius.circular(10.0), // Border radius
            //   ),
            Image.asset(
              "assets/images/fall.png",
              width: 250,
              height: 200,
              fit: BoxFit.cover,
            ),
            // ),
            const SizedBox(height: 20),
            // Text widget with description
            Consumer<Loginprovider>(builder: (context, value, child) {
              return value.falldetection
                  ? Text(
                      "There is a high likelihood of falling.",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 163, 93, 66),
                          fontFamily: 'serif'),
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      "Patient is safe with no risk of falling.\n Relax, we're watching over them closely.",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 163, 93, 66),
                          fontFamily: 'serif'),
                      textAlign: TextAlign.center,
                    );
            }),
          ],
        ),
      ),
    );
  }
}
