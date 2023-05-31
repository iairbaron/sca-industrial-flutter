import 'package:flutter/material.dart';

class FooterWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'SCA Industrial S.A.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'AV. Corrientes 5062 Piso 1 (1414)- Ciudad de Buenos Aires- Argentina',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '(+5411) 4855-8580',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 16),
                Text(
                  '(+5411) 4854-2898',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'info@scaingenieria.com.ar',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 16),
                Text(
                  'www.scaingenieria.com.ar',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
