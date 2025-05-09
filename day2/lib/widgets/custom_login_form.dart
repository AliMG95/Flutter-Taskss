import 'package:flutter/material.dart';
import 'package:flutter_day2_task1/widgets/custom_icon_btn.dart';
import 'package:flutter_day2_task1/widgets/custom_txt_field.dart';
import 'package:flutter_day2_task1/widgets/custom_txt_btn.dart';
import 'package:flutter_day2_task1/widgets/custom_btn.dart';
import 'package:flutter_day2_task1/widgets/custom_divider.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({Key? key}) : super(key: key);

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  double _sliderValue = 0.0;
  // ignore: non_constant_identifier_names
  bool _isChecked_chkbox = false;
  bool _isChecked_switch = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter an email";
    }
    if (!value.contains('@')) {
      return "Please enter a valid email";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform actions here
      print('Form is valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 5),
              CustomTxtField(
                label: "Email",
                hintTxt: "Email",
                prefixIcon: const Icon(Icons.email, color: Colors.grey),
                width: 350,
                height: 60,
                fontSize: 25,
                labelFontSize: 30,
                controller: _emailController,
                validator: _validateEmail,
              ),
              const SizedBox(height: 5),
              CustomTxtField(
                label: "Password",
                hintTxt: "Password",
                width: 350,
                height: 60,
                fontSize: 25,
                labelFontSize: 30,
                prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                suffixIcon: const Icon(Icons.remove_red_eye),
                isPassword: true,
                obscureTxt: true,
                controller: _passwordController,
                validator: _validatePassword,
              ),
              const SizedBox(height: 5),

              CustomTxtBtn(
                txt: "Recover Password",
                txtColor: const Color.fromARGB(255, 248, 1, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                onPressed: () {
                  print("Button Pressed");
                },
                alignment:
                    MainAxisAlignment
                        .end, // أو MainAxisAlignment.end أو MainAxisAlignment.start
              ),

              Text(
                "USD ${_sliderValue.toStringAsFixed(0)}",
                style: const TextStyle(fontSize: 60),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                // width: 300,
                height: 10,
                child: Slider(
                  value: _sliderValue,
                  activeColor: Colors.lightBlue,
                  inactiveColor: Colors.grey,
                  thumbColor: const Color.fromARGB(255, 221, 218, 218),
                  min: 0,
                  max: 200,
                  divisions: 200,
                  label: _sliderValue.toStringAsFixed(2),
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
              ),

              CheckboxListTile(
                value: _isChecked_chkbox,
                title: const Text("Checkbox Labe"),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    _isChecked_chkbox = value!;
                  });
                },
              ),

              SwitchListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: _isChecked_switch,
                title: const Text("Label"),
                // subtitle: const Text("Subtitle"),
                // secondary: const Icon(Icons.check_circle),
                activeColor: Colors.white,
                activeTrackColor: Colors.lightBlue,
                inactiveThumbColor: Colors.lightBlue,
                // inactiveTrackColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _isChecked_switch = value;
                  });
                },
              ),

              const SizedBox(height: 5),
              CustomBtn(
                txt: "Sign In",
                width: 600,
                height: 80,
                onPressed: _submitForm,
              ),
              // ElevatedButton(
              //   onPressed: _submitForm,
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.deepPurple,
              //     padding: const EdgeInsets.symmetric(vertical: 15),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //       side: const BorderSide(color: Colors.grey),
              //     ),
              //   ),
              //   child: const Text(
              //     "Sign In",
              //     style: TextStyle(fontSize: 18, color: Colors.white),
              //   ),
              // ),
              const SizedBox(height: 5),

              // const Divider(color: Colors.grey, thickness: 0.4),
              CustomDivider(
                color: Colors.grey,
                thickness: 0.4,
                txt: "or continue with",
                textStyle: const TextStyle(color: Colors.grey, fontSize: 25),
              ),

              const SizedBox(height: 5),

              CustomIconBtn(
                img_icon: "assets/images/google.png",
                txt: "Continue With Google",
                onPressed: () {
                  print("Google button pressed");
                },
                width: 600,
                height: 80,
                textStyle: const TextStyle(fontSize: 25, color: Colors.grey),
                iconWidth: 120,
                iconHeight: 120,
                iconAlignment: Alignment.centerLeft,
                textAlignment: Alignment.center,
                iconPadding: const EdgeInsets.all(1.0),
              ),

              const SizedBox(height: 20),

              CustomIconBtn(
                img_icon: "assets/images/facebook.png",
                txt: "Continue With Facebook",
                onPressed: () {
                  print("Facebook button pressed");
                },
                width: 600,
                height: 80,
                textStyle: const TextStyle(fontSize: 25, color: Colors.grey),
                iconWidth: 120,
                iconHeight: 120,
                iconAlignment: Alignment.centerLeft,
                textAlignment: Alignment.center,
                iconPadding: const EdgeInsets.all(1.0),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the content horizontally
                children: <Widget>[
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  SizedBox(
                    width:
                        16.0, // Add some space between the text and the button
                  ),
                  CustomTxtBtn(
                    txt: "Sign Up!",
                    onPressed: () {
                      print("Sign Up button pressed");
                    },
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 0,
                    ),
                    txtColor: const Color.fromARGB(255, 248, 1, 1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
