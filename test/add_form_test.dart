// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CaseRegistration extends StatefulWidget {
//   const CaseRegistration({Key? key}) : super(key: key);

//   @override
//   _CaseRegistrationState createState() => _CaseRegistrationState();
// }

// class _CaseRegistrationState extends State<CaseRegistration> {
//   String? _chosenValue;
//   //DECLARATIONS AND ASSIGNMENTS
//   bool _show = true;
//   final _controller = TextEditingController();
//   String? _chosenValue0;
//   final precintController = TextEditingController();

//   final _formKey = GlobalKey<FormState>();

//   String region = "";
//   String province = "";
//   String code = "";
//   String no = "";
//   String municipality = "";
//   String place = "";
//   dynamic regvotes = "";
//   String barangay = "";
//   String error = "";
//   String message = "";
  
//   //Functions
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance?.addPostFrameCallback((_) => randomNumber());
//   }

//   Future getData(value) async {
//     var rsp= []; // await fetchPrecint(value);

//     // if (rsp['data'] != null) {
//     //   var data = Map<String, dynamic>.from(rsp['data']);
//     //   setState(() {
//     //     _show = true;
//     //     message = data['barangay'] +
//     //         " " +
//     //         data['municipality'] +
//     //         " " +
//     //         data['province'] +
//     //         " " +
//     //         data['region'];
//     //   });
//     // } else {
//     //   setState(() {
//     //     _show = false;
//     //     message = rsp['message'];
//     //   });
//     // }
//   }

//   void randomNumber() {
//     var random = Random();

//     int min = 99999;

//     int max = 999999;

//     String result = (min + random.nextInt(max - min)).toString();

//     setState(() {
//       _controller.text = result;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add New Case'),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           FocusScopeNode currentFocus = FocusScope.of(context);
//           if (!currentFocus.hasPrimaryFocus) {
//             currentFocus.unfocus();
//           }
//         },
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text('Incident Report'),
//           ),
//           body: Center(
//             child: ListView(
//               children: <Widget>[
//                 Form(
//                   key: _formKey,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           alignment: Alignment.centerLeft,
//                           padding: const EdgeInsets.all(0.0),
//                           margin: const EdgeInsets.symmetric(
//                               horizontal: 0, vertical: 10),
//                           child: TextFormField(
//                             validator: (String? val) =>
//                                 val!.isEmpty ? 'Please enter password' : null,
//                             decoration:
//                                 const InputDecoration(labelText: "Precint"),
//                             inputFormatters: [
//                               FilteringTextInputFormatter.digitsOnly
//                             ],
//                             textInputAction: TextInputAction.search,
//                             controller: precintController,
//                             onFieldSubmitted: (value) async {
//                               if (_formKey.currentState!.validate()) {
//                                 await getData(precintController.text);
//                               }
//                             },
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () async {
//                           if (_formKey.currentState!.validate()) {
//                             await getData(precintController.text);
//                           }
//                         },
//                         icon: const Icon(Icons.search),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     message,
//                     style: const TextStyle(
//                         color: Color.fromARGB(255, 20, 20, 20),
//                         fontSize: 14.0),
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   padding: const EdgeInsets.all(0.0),
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                   child: Container(
//                     child: TextFormField(
//                       controller: _controller,
//                       readOnly: true,
//                       decoration: const InputDecoration(
//                           border: UnderlineInputBorder(),
//                           labelText: 'Incident Reference Number'),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   padding: const EdgeInsets.all(0.0),
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                   child: Container(
//                     child: TextFormField(
//                       keyboardType: TextInputType.multiline,
//                       maxLines: 5,
//                       decoration: const InputDecoration(
//                           border: UnderlineInputBorder(), labelText: 'Details'),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft, 
//                   padding: const EdgeInsets.all(0.0),
//                   child: DropdownButton<String>(
//                     value: _chosenValue,
//                     //elevation: 5,
//                     style: const TextStyle(color: Colors.black),

//                     items: <String>[
//                       'Android',
//                       'IOS',
//                       'Flutter',
//                       'Node',
//                       'Java',
//                       'Python',
//                       'PHP',
//                     ].map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     hint: const Text(
//                       "Please choose a langauage",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     onChanged: (String? value) {
//                       setState(() {
//                         _chosenValue = value;
//                       });
//                     },
//                   ),
//                 ),
//                 Visibility(
//                   visible: _show,
//                   child: Container(
//                     alignment: Alignment.centerLeft,
//                     padding: const EdgeInsets.all(0.0),
//                     margin:
//                         const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
//                   ),
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     elevation: 5,
//                     padding: const EdgeInsets.all(0),
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     "Submit",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
