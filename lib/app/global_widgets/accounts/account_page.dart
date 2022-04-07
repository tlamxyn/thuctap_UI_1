import 'package:flutter/material.dart';
import 'package:project_dak/app/global_widgets/accounts/components/card_account.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [
          CardAccount(
            type: CardType.outline,
          ),
          SizedBox(height: 10),
          CardAccount(
            type: CardType.normal,
          ),
           SizedBox(height: 10),
          CardAccount(
            type: CardType.round,
          ),
        ],
      ),
    );
  }
}
