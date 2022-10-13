import 'package:flutter/material.dart';
import 'package:sowedane/forms/register_form.dart';
import 'package:sowedane/utils/colors/colors.dart';
import 'package:sowedane/utils/widgets/buttons.dart';
import 'package:sowedane/utils/widgets/text_widgets.dart';
import 'package:sowedane/views/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  bool isChecked = false;

  Widget yellowText(String label){
    return Text(
      label,
      style: const TextStyle(
        color: secondaryBtnColor,
        fontSize: 10,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 6,
                alignment: Alignment.centerLeft,
                child: const TitleText(title: 'SIGN UP'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text('HELLO ',
                        style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 24
                        ),
                      ),
                      TitleText(
                        title: 'BEAUTIFUL.!',
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children : const [
                      NormalText(
                        data: 'Enter your information below or login with Create an  account',
                      ),
                    ] 
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const RegisterForm(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: ((value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              })
                            ),
                            const SmallText(data: 'I agree to the '),
                            InkWell(
                              onTap: (){},
                              child: yellowText('Terms & conditions, Privacy Policy ')
                              ),
                            const SmallText(data: 'and '),
                            InkWell(
                              onTap: (){},
                              child: yellowText('Fees')
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const PrimaryButton(
                    label: 'SIGN UP',
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(64, 0, 64, 0),
                    child: Column(
                      children: [
                        const BoldText(
                          label: 'Or you can Join with'
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Image.asset(
                                'assets/icons/facebook.png',
                                scale: 5,
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Image.asset(
                                'assets/icons/google.png',
                                scale: 5,
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Image.asset(
                                'assets/icons/twitter.png',
                                scale: 5,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const NormalText(
                        data: 'Already have an Account? Click here ',
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                              MaterialPageRoute(builder: (context) => const LoginView()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}