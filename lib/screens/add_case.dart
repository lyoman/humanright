import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_formfield.dart';

class CaseRegistrationForm extends StatefulWidget {
  const CaseRegistrationForm({Key? key}) : super(key: key);

  @override
  _CaseRegistrationFormState createState() => _CaseRegistrationFormState();
}

class _CaseRegistrationFormState extends State<CaseRegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //  "user": null,
  //   "company": null,
  //   "date_reported": null,
  //   "type_of_violation": null,
  //   "description_of_victims": null,
  //   "names_of_vitims": "",
  //   "victim_age": "",
  //   "victim_gender": null,
  //   "describe_gender": "",
  //   "victim_phone_number": "",
  //   "victim_address": "",
  //   "description_of_perpetrator": null,
  //   "motivations_behind_incident": null,
  //   "what_happened": "",
  //   "how_it_happened": "",
  //   "community_description": "",
  //   "evidence_files": null,
  //   "location": "",
  //   "latitude": null,
  //   "longitude": null,
  //   "identity_verification": null

  _submitForm() {
    if (_formKey.currentState!.validate()) {
      final user = {
        'name': _nameController.text,
        'phone': _phoneController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      };
      if (kDebugMode) {
        print(user.toString());
      }

      // If the form passes validation, display a Snackbar.
      Scaffold.of(context)
          .showSnackBar(const SnackBar(content: Text('Registration sent')));
      //_formKey.currentState.save();
      //_formKey.currentState.reset();
      //_nextFocus(_nameFocusNode);
    }
  }

  String? _validateInput(String value) {
    if (value.trim().isEmpty) {
      return 'Field required';
    }
    return null;
  }

  _nextFocus(FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                focusNode: _nameFocusNode,
                controller: _nameController,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                // validator: _validateInput,
                onFieldSubmitted: (String value) {
                  _nextFocus(_phoneFocusNode);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your full name',
                  labelText: 'Full Name',
                ),
              ),
              TextFormField(
                focusNode: _phoneFocusNode,
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                // validator: _validateInput,
                onFieldSubmitted: (String value) {
                  _nextFocus(_emailFocusNode);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your phone number',
                  labelText: 'Phone Number',
                ),
              ),
              TextFormField(
                focusNode: _emailFocusNode,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                // validator: _validateInput,
                onFieldSubmitted: (String value) {
                  _nextFocus(_passwordFocusNode);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your email address',
                  labelText: 'Email Address',
                ),
              ),
              TextFormField(
                focusNode: _passwordFocusNode,
                controller: _passwordController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: true,
                // validator: _validateInput,
                onFieldSubmitted: (String value) {
                  _submitForm();
                },
                decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined)),
              ),
              CustomFormField(
                headingText: "Email",
                hintText: "Email",
                obsecureText: false,
                suffixIcon: const SizedBox(),
                controller: _emailController,
                maxLines: 1,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: ElevatedButton(
                        onPressed: _submitForm,
                        child: const Text('Register'),
                      ),
                    ),
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
