import 'dart:convert';
import 'package:http/http.dart' as http; 

Future userLogin(String email,String password) async {
    // Showing CircularProgressIndicator.
    // setState(() {
    //   visible = true;
    // });

    // Getting value from Controller
    // String email = emailController.text;
    // String password = passwordController.text;

    // SERVER LOGIN API URL
    var url = 'https://humanrights.pythonanywhere.com/api/reportcase/report_case/login_user.php';

    // Store all data with Param Name.
    var data = {'email': email, 'password': password};

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If the Response Message is Matched.
    if (message == 'Login Matched') {
      // Hiding the CircularProgressIndicator.
      // setState(() {
      //   visible = false;
      // });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) =>
      //             HomeScreen()));
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      // setState(() {
      //   visible = false;
      // });

      // Showing Alert Dialog with Response JSON Message.
      // showDialog(
      //   context: null,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: new Text(message),
      //       actions: <Widget>[
      //         FlatButton(
      //           child: new Text("OK"),
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //         ),
      //       ],
      //     );
      //   },
      // );
    }
  }
