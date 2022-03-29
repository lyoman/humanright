import 'package:flutter/material.dart';

class ReportedCases extends StatelessWidget {
  const ReportedCases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.blue,
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xfff5f7fa),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Reported Cases",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            
            DevicesGridDashboard(size: size)
          ],
        ),
      ),
    );
  }
}

class DevicesGridDashboard extends StatelessWidget {
  const DevicesGridDashboard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardField(
                size,
                const Icon(
                  Icons.lightbulb_outline,
                  color: Colors.orange,
                ),
                'Main Light',
                '50%'),
            CardField(
                size,
                const Icon(Icons.lightbulb_outline, color: Colors.grey),
                'Table Lamp',
                'Off'),
            CardField(
                size,
                const Icon(Icons.lightbulb_outline, color: Colors.grey),
                'Floor Lamp',
                'Off'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardField(
                size,
                const Icon(
                  Icons.music_note_outlined,
                  color: Colors.amber,
                ),
                'Speaker',
                '50%'),
            CardField(size, const Icon(Icons.radio, color: Colors.grey),
                'Socket', 'Off'),
            CardField(
                size,
                const Icon(Icons.wifi_outlined, color: Colors.green),
                'Sensor',
                'Off'),
          ],
        ),
        CardField(
            size,
            const Icon(
              Icons.air,
              color: Colors.teal,
            ),
            'Air Condition',
            '50%'),
      ],
    );
  }
}

CardField(
  Size size,
  Icon icon,
  String title,
  String subtitle,
) {
  return Card(
      child: SizedBox(
          height: size.width * .23,
          width: size.width * .26,
          child: Center(
            child: Column(children: [
              ListTile(
                leading: icon,
                title: Text(
                  subtitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ]),
          )));
}
