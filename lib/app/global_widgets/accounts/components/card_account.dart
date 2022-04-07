// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project_dak/app/core/values/images.dart';
import 'package:project_dak/app/core/values/numbers.dart';

enum CardType { normal, outline, round }

class CardAccount extends StatelessWidget {
  final CardType type;
  const CardAccount({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case CardType.normal:
        Widget card = _buildCardNormal(context);
        return card;
      case CardType.outline:
        Widget card = _buildCardOutline(context);
        return card;
      case CardType.round:
        Widget card = _buildCardRound(context);
        return card;
      default:
        Widget card = _buildCardNormal(context);
        return card;
    }
  }

  _buildCardOutline(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      padding: const EdgeInsets.all(14.0),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment(-0.5, -1),
            end: Alignment(0.5, 1),
            colors: [
              Color.fromARGB(255, 244, 246, 117),
              Color.fromARGB(255, 203, 183, 3),
              Color.fromARGB(255, 244, 246, 117),
            ]),
        borderRadius: BorderRadius.circular(walletRadious),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(
              Images.Avatar,
            ),
          ),
          SizedBox(height: 30),
          Text(
            '\$1,445,000,000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'USDT',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  _buildCardNormal(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      padding: const EdgeInsets.all(14.0),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment(-0.5, -1),
            end: Alignment(0.5, 1),
            colors: [
              Color.fromARGB(255, 243, 245, 127),
              Color.fromARGB(255, 212, 192, 3),
              Color.fromARGB(255, 243, 245, 127),
            ]),
        borderRadius: BorderRadius.circular(walletRadious),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'YOUR TOKEN BALANCE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$11,000',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'DAK',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.lock_open,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$12,000',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'DAK',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildCardRound(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment(-0.5, -1),
            end: Alignment(0.5, 1),
            colors: [
              Color.fromARGB(255, 243, 245, 127),
              Color.fromARGB(255, 212, 192, 3),
              Color.fromARGB(255, 243, 245, 127),
            ]),
        borderRadius: BorderRadius.circular(walletRadious),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'YOUR TOKEN BALANCE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Recived 10% token bonus when buy 5,000 DAK',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text('YOUR TOKEN BALANCE'),
        ],
      ),
    );
  }
}
