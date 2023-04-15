import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 130,
          ),
          Container(
            color: Colors.white,
            // height: MediaQuery.of(context).size.height,
            child: Lottie.asset('assets/lottie/bank.json'),
          ),
          RichText(
            text: const TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: 'Easy',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )
                  ),
                  TextSpan(
                      text: '  Banking',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.grey
                      )
                  ),
                ]
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20.0 , 20.0 , 20.0 , 0.0),
              child: Column(
                children:const [
                  Text(
                    "A brand new experience of managing ",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    " your bank ",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextButton(
              onPressed: (){},
              child: Container(
                padding: EdgeInsets.all(10.0),
                height: 45.0,
                width: 130.0,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
