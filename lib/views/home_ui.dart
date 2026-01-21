import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/signin_ui.dart';
import 'package:flutter_iot_second_app/views/signup_ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/logo (1).png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'SIC • PAVIS • MAGNA',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'greatness from small beginnings',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Created by Sir Francis Drake',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninUi(),
                      ),
                    );
                  },
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      150, 60,),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUi(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      150, 60,),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
