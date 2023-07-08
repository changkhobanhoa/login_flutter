import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login/social_button.dart';

import 'helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();
  TextEditingController emailRegister = TextEditingController();
  TextEditingController passwordRegister = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool obscureText = false;
  bool obscureTextConfirm = false;
  bool isLogin = true;
  bool hasText = false;
  bool _isValid = false;
  String valueAuth = "No initialized";
  String? eMail, titPass, titComfirm, titEmail, titlePass = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    setState(() {
      email.addListener(() {
        setState(() {
          hasText = email.text.isNotEmpty;
       
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
               
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "App Name",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue, // Màu nền của container
                    borderRadius:
                        BorderRadius.circular(10.0), // Độ cong của border
                  ),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                isLogin = true;
                              });
                            },
                            color: isLogin
                                ? Colors.white
                                : Colors.blue, // Màu nền của button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Độ cong của border
                            ),
                            child: const Text('Login',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                        0xFF000000))), // Nội dung của button
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                isLogin = false;
                              });
                            },
                            color: isLogin
                                ? Colors.blue
                                : Colors.white, // Màu nền của button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Độ cong của border
                            ),
                            child: const Text('Register',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                        0xFF000000))), // Nội dung của button
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: formKey,
                  onChanged: () {
                    final isValid = formKey.currentState!.validate();
                    if (_isValid != isValid) {
                      setState(() {
                        _isValid = isValid;
                      });
                    }
                  },
                  child: isLogin
                      ? loginWidget(
                          obscureText
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          () {},
                        )
                      : registerWidget(
                          obscureText
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          obscureTextConfirm
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined, () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        }, () {
                          setState(() {
                            obscureTextConfirm = !obscureTextConfirm;
                          });
                        }, () {}),
                ),
                Container(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 150,
          child: Column(
            children: [
              const Text("Other sign in options"),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(icons: "assets/icons/facebook.svg", fun: () {}),
                  const SizedBox(
                    width: 30,
                  ),
                  SocialButton(icons: "assets/icons/google.svg", fun: () {}),
                  const SizedBox(width: 30),
                  SocialButton(icons: "assets/icons/apple.svg", fun: () {}),
                ],
              ),
            ],
          ),
        ));
  }

  Widget loginWidget(
    IconData icon,
    Function() fun,
    Function() forgot,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email address",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000))),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50, // Độ rộng của TextFormField bằng độ rộng của màn hình
          child: TextFormField(
            validator: (value){
              if(value!.isValidEmail){
                return "Enter valid email";
              }
              return null;
            },
            controller: email,
            decoration: InputDecoration(
              focusColor: Colors.red,
              suffixIcon: hasText
                  ? IconButton(
                      onPressed: () => email.clear(),
                      icon: const Icon(Icons.clear),
                    )
                  : null,
              errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: 'Your email', // Gợi ý cho người dùng
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10))), // Viền của TextFormField
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Password",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000))),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50, // Độ rộng của TextFormField bằng độ rộng của màn hình
          child: TextFormField(
            obscureText: obscureText,
            controller: passwordLogin,
            decoration: InputDecoration(
                alignLabelWithHint: true,
                hintText: 'Password', // Gợi ý cho người dùng
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10))), // Viền của TextFormField
                suffixIcon: IconButton(
                  icon: Icon(
                    icon,
                  ),
                  onPressed: () {
                    fun();
                  },
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            child: const Text("Forgot password",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000))),
            onPressed: () {
              forgot();
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue, // Màu nền của container
                  borderRadius:
                      BorderRadius.circular(10.0), // Độ cong của border
                ),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Platform.isAndroid
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.fingerprint_rounded,
                      size: 48,
                    ))
                : IconButton(
                    onPressed: () {}, icon: Image.asset("assets/icons/faceId"))
          ],
        )
      ],
    );
  }

  Widget registerWidget(IconData icon1, IconData icon2, Function() fun1,
      Function() fun2, Function() register) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Email address",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000)),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50, // Độ rộng của TextFormField bằng độ rộng của màn hình
          child: TextFormField(
            controller: emailRegister,
            decoration: const InputDecoration(
              hintText: 'example@gmail.com', // Gợi ý cho người dùng

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10))), // Viền của TextFormField
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Create a password",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000))),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50, // Độ rộng của TextFormField bằng độ rộng của màn hình
          child: TextFormField(
            obscureText: obscureText,
            controller: passwordRegister,
            decoration: InputDecoration(
              hintText: 'must be 8 characters', // Gợi ý cho người dùng
              suffixIcon: IconButton(
                icon: Icon(
                  icon1,
                ),
                onPressed: () {
                  fun1();
                },
              ),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10))), // Viền của TextFormField
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Confirm password",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000))),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 50, // Độ rộng của TextFormField bằng độ rộng của màn hình
            child: TextFormField(
              obscureText: obscureTextConfirm,
              controller: confirmPassword,
              decoration: InputDecoration(
                hintText: 'repeat password', // Gợi ý cho người dùng
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10))), // Viền của TextFormField
                suffixIcon: IconButton(
                  icon: Icon(
                    icon2,
                  ),
                  onPressed: () {
                    fun2();
                  },
                ),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue, // Màu nền của container
            borderRadius: BorderRadius.circular(10.0), // Độ cong của border
          ),
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {
              formKey.currentState!.validate();
              register();
            },
            child: const Text(
              'Register',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000)),
            ),
          ),
        )
      ],
    );
  }
}
