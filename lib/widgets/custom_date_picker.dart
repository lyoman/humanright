import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({Key? key}) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text('Pick date: '),
        const SizedBox(
          width: 25.0,
        ),
        Expanded(
          flex: 4,
          child: TextField(
            readOnly: true,
            controller: dateController,
            decoration:
                const InputDecoration(hintText: 'Click to Pick your Date'),
            onTap: () async {
              var date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100));
              dateController.text = date.toString().substring(0, 10);
            },
          ),
        ),
      ],
    );
  }
}
