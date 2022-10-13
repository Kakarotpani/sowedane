import 'package:flutter/material.dart';
import 'package:sowedane/forms/login_form.dart';
import 'package:sowedane/utils/colors/colors.dart';
import 'package:sowedane/utils/widgets/buttons.dart';
import 'package:sowedane/utils/widgets/text_widgets.dart';
import 'package:sowedane/views/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

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
                child: const TitleText(title: 'SIGN IN'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleText(
                    title: 'Welcome Back :)',
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children : const [
                      NormalText(
                        data: 'To Keep Connected with us please login with your Personal information by address and password',
                      ),
                    ] 
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height / 2.6,
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const LoginForm(),
                      Container(
                        padding: const EdgeInsets.only(right: 20),
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap:(){},
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              color: primaryTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const PrimaryButton(
                    label: 'SIGN IN',
                  ),
                  const SizedBox(height: 26),
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
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const NormalText(
                        data: 'Don\'t have an Account? Click here ',
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                              MaterialPageRoute(builder: (context) => const RegisterView()),
                          );
                        },
                        child: const Text(
                          'Register Now',
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
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
