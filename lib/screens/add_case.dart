import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:humanrights/widgets/custom_date_picker.dart';

class CaseRegistration extends StatelessWidget {
  const CaseRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creating form',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const _CaseRegistrationState(),
    );
  }
}

class _CaseRegistrationState extends StatefulWidget {
  const _CaseRegistrationState({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_CaseRegistrationState> {
  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  DateTime selectedDate = DateTime.now();
  final dateController = TextEditingController();

  List<String> listItems = ["abc", "def", "hij"];

  String selectVal = "abc";
  final _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  String _currentSelectedValue = "Food";

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text(
            'Account Details',
            style: TextStyle(fontFamily: 'Bebas', letterSpacing: 2),
          ),
          content: Container(
            child: Column(
              children: [
                const CustomDatePicker(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Wrap(
                      spacing: 13,
                      runSpacing: 20,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text('Select Department us: '),
                            Expanded(
                              flex: 4,
                              child: FormField<String>(
                                builder: (FormFieldState<String> state) {
                                  return InputDecorator(
                                    decoration: InputDecoration(
                                        labelStyle: const TextStyle(
                                            color: Colors.lightGreenAccent,
                                            fontSize: 16.0),
                                        errorStyle: const TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 16.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    isEmpty: _currentSelectedValue == '',
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: _currentSelectedValue,
                                        isDense: true,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _currentSelectedValue = newValue!;
                                            state.didChange(newValue);
                                          });
                                        },
                                        items: _currencies.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 5,
                ),
                // const MyPickImageScreen(),
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Create a Password',
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text(
              'Address',
              style: TextStyle(
                fontFamily: 'Bebas',
                letterSpacing: 2,
              ),
            ),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: address,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Present Address',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: pincode,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Permanent Address',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text(
              'bank Details',
              style: TextStyle(
                fontFamily: 'Bebas',
                letterSpacing: 2,
              ),
            ),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: pincode,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Permanent Address',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ))),
        Step(
          state: StepState.complete,
          isActive: _activeStepIndex >= 3,
          title: const Text('Confirm'),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name.text}'),
                Text('Email: ${email.text}'),
                const Text('Password: *****'),
                Text('Address : ${address.text}'),
                Text('PinCode : ${pincode.text}'),
              ],
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Creating a Form',
          style: TextStyle(
            fontFamily: 'Bebas',
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            if (kDebugMode) {
              print('Submited');
            }
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }
          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
      ),
    );
  }

  steppingTop(context, {onStepContinue, onStepCancel}) {
    assert(onStepCancel != null);
    final isLastStep = _activeStepIndex == stepList().length - 1;
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onStepContinue,
            child: (isLastStep) ? const Text('Submit') : const Text('Next'),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        if (_activeStepIndex > 0)
          Expanded(
            child: ElevatedButton(
              onPressed: onStepCancel,
              child: const Text('Back'),
            ),
          ),
      ],
    );
  }
}
