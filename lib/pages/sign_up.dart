import 'package:connexion/delayed_animation.dart';
import 'package:connexion/pages/sign_in.dart';
import 'package:connexion/theme/theme.dart';
import 'package:connexion/widgets/BackgrounPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formSignInkey = GlobalKey<FormState>();
  bool rememberPassword = true;

  @override
  Widget build(BuildContext context) {
    return Backgrounpage(
      child: Column(
        children: [
          const Expanded(
              flex: 1,
              child: SizedBox(
                height: 10,
              )),
          Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
                decoration: BoxDecoration(
                    color: darkColorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignInkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       DelayedAnimation(
                        delay: 1000, child:  Text(
                          'Get Started',
                          style: TextStyle(
                              color: darkColorScheme.primary,
                              fontSize: 30,
                              fontWeight: FontWeight.w900),
                        )),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Full Name';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: const Text('Full Name'),
                              filled: true,
                              fillColor: const Color(0xFF1E1E1E),
                              hintText: 'Enter Full Name',
                              hintStyle: const TextStyle(color: Colors.white24),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: const Text('Email'),
                              filled: true,
                              fillColor: const Color(0xFF1E1E1E),
                              hintText: 'Enter Email',
                              hintStyle: const TextStyle(color: Colors.white24),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '.',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Password';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: const Text('Password'),
                              filled: true,
                              fillColor: const Color(0xFF1E1E1E),
                              hintText: 'Enter Passord',
                              hintStyle: const TextStyle(color: Colors.white24),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: rememberPassword,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        rememberPassword = value!;
                                      });
                                    },
                                    activeColor: darkColorScheme.primary,
                                    ),
                                    const Text(
                                  'I agree to the processing of  ',
                                  style: TextStyle(color: Colors.white54),
                                ),
                                GestureDetector(
                              child: Text(
                                'Personal data',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: darkColorScheme.primary),
                              ),
                            )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                         SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formSignInkey.currentState!.validate() &&
                                    rememberPassword) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Processing Data'),
                                    ),
                                  );
                                } else if (!rememberPassword) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Please agree to the processing of personal'),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Sign up')),
                        ),
                         const SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            child: Text('Sign up with',
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                            ),
                            ),
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ))
                          ],
                        ),
                        const SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Brand(Brands.facebook_f),
                            Brand(Brands.twitter),
                            Brand(Brands.google),
                            Brand(Brands.apple_logo),

                          ],
                        ),
                        const SizedBox(height: 25,),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have account? ',
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const SignIn(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: darkColorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
