import 'package:flutter/material.dart';
import 'package:flutter_day2_task1/widgets/custom_txt_field.dart';
import 'package:flutter_day2_task1/widgets/custom_btn.dart';
import 'package:flutter_day2_task1/widgets/custom_txt_btn.dart';

class CustomRegisterForm extends StatefulWidget {
  const CustomRegisterForm({Key? key}) : super(key: key);

  @override
  State<CustomRegisterForm> createState() => _CustomRegisterFormState();
}

class _CustomRegisterFormState extends State<CustomRegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  double _sliderValue = 0.0;
  bool _isChecked_chkbox = false;
  bool _isChecked_switch = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fullNameController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your full name';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform registration logic here
      print('Form is valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),

            CustomTxtField(
              label: 'Full Name',
              hintTxt: 'Full Name',
              prefixIcon: const Icon(Icons.person, color: Colors.grey),
              width: 350,
              height: 60,
              fontSize: 25,
              labelFontSize: 30,
              controller: _fullNameController,
              validator: _validateFullName,
            ),

            const SizedBox(height: 10),

            CustomTxtField(
              label: 'Email',
              hintTxt: 'Email',
              prefixIcon: const Icon(Icons.email, color: Colors.grey),
              width: 350,
              height: 60,
              fontSize: 25,
              labelFontSize: 30,
              controller: _emailController,
              validator: _validateEmail,
            ),

            const SizedBox(height: 10),

            CustomTxtField(
              label: 'Password',
              hintTxt: 'Password',
              prefixIcon: const Icon(Icons.password, color: Colors.grey),
              suffixIcon: const Icon(Icons.remove_red_eye),
              isPassword: true,
              obscureTxt: true,
              width: 350,
              height: 60,
              fontSize: 25,
              labelFontSize: 30,
              controller: _passwordController,
              validator: _validatePassword,
            ),

            const SizedBox(height: 10),

            CustomTxtField(
              label: 'Password Confirmation',
              hintTxt: 'Password Confirmation',
              prefixIcon: const Icon(Icons.password, color: Colors.grey),
              suffixIcon: const Icon(Icons.remove_red_eye),
              isPassword: true,
              obscureTxt: true,
              width: 350,
              height: 60,
              fontSize: 25,
              labelFontSize: 30,
              controller: _passwordConfirmController,
              validator: _validateConfirmPassword,
            ),

            const SizedBox(height: 20),

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

            const SizedBox(height: 20),

            CustomBtn(
              txt: "Sign Up",
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
            //     'Sign Up',
            //     style: TextStyle(fontSize: 18, color: Colors.white),
            //   ),
            // ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the content horizontally
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                SizedBox(
                  width: 16.0, // Add some space between the text and the button
                ),
                CustomTxtBtn(
                  txt: "Sign In!",
                  onPressed: () {
                    print("Sign In button pressed");
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
    );
  }
}
