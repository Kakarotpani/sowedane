import 'package:flutter/material.dart';
import 'package:sowedane/utils/colors/colors.dart';
import 'package:sowedane/utils/widgets/buttons.dart';
import 'package:sowedane/utils/widgets/text_widgets.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget successContainer(String lt, String rt, String lb, String rb){
      return SizedBox(
        height: MediaQuery.of(context).size.height/12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldText(label: lt),
                BoldText(label: rt)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ResultText(label: lb),
                ResultText(label: rb)
              ],
            ),
            const Divider(thickness: 1.0)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width / 1.1,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: formColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icons/success.png', scale: 5),
                const TitleText(title: 'Success'),
                const BoldText(label: 'You’re Successfully Transferred Money.'),
                Container(
                  height: MediaQuery.of(context).size.height/9,
                  width: MediaQuery.of(context).size.width/1.3,
                  decoration: const BoxDecoration(
                    color: amountContainerColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TitleText(title: '\$ 3250.50'),
                      BoldText(label: 'Request Amount')
                    ],
                  )
                ),
                Column(
                  children: [
                    successContainer('From:', 'Archibald Northbottom', 'Credit Card', 'VISA'),
                    successContainer('To:', 'Lurch Schpellchek', 'Credit Card', 'VISA'),
                    successContainer('Date:', '24 Dec 2019', '', '12:52 PM'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.receipt_long_sharp, size: 15),
                        SizedBox(width: 6),
                        Text('Download Receipt',
                          style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 4),
                PrimaryButton(label: 'Done', onPressed: (){})
              ],
            ),
          )
        ),
      )
    );
  }
}