import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_nuralogix/flutter_nuralogix.dart';
import 'package:flutter_nuralogix/utils/measurement_payload.dart';
import 'package:flutter_nuralogix/utils/measurement_status.dart';

void main() {
  runApp(const NuralogixExample(
    title: "Nuralogix Example",
  ));
}

class NuralogixExample extends StatefulWidget {
  const NuralogixExample({super.key, required this.title});

  final String title;

  @override
  State<NuralogixExample> createState() => _NuralogixExampleState();
}

class _NuralogixExampleState extends State<NuralogixExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            FlutterNuralogix(
              measurementPayload: MeasurementPayload(
                  studyID: "e6741657-0fdf-40b1-a48a-d3a18e14d65a",
                  measurementId: "5179cadf-9123-433e-bcf5-72c23f922ef2",
                  refreshToken: "U2FsdGVkX1+CTe8jsRJzhI2roFsMs9YDOyj2xFXX1J/3iCc5raTmaA5A8aF5FZlaMfN/P8DQZpnVhR8nx4DnriLuziQzt/3ohqDhkKS1LVPjaWu27HdCa34IW75Zc/eFDBTB+4wcxEEK5RZo1Bs6en3vbg3jIWCbcZ7pNg1dOqmGdPcI5bBH1v38pqeEGubFYq1GmY3KepfpSAT7uLc2wuUhcBiAIwyxWtnOcoGaDxRO2fUHF38cdf8kdSLj7SrHn6A73GTmS1MVPZGbok3hOPR3+CdPV0eZa/THn2Vz58xtpNjRSFIvDTblpvesqIsPmGoFal9e1mjXOq/Yimp8kxlMr/OgJdjA8UeuvzfowLspRjCMWmhzKhl981TgnrrHaETiKVqmPakICwtjuFKsV2zJWK6wEI19XxP1Kn391T7d1UyizWV61arb5U2NWyyrrjoGVDMkQfQ1g2ivrR4+TKPvdao2SIEb+lDPpKFEb1va9TUFWkvAcS9m7/igY8WPuQN2D+GpgjLTzdpcWYVmNlLhzPKMkuzouFBdoouiB8CJqEFR/vlCtSPvWsD0a3cGcIbBmMyFmig3ADhYOeQFWh7nrypDvbr7kNcJ8eEofMLachlPIzCDnPpvulYHT/2hBJ1gGbgY0QmzUuR2XWp0lGibS4jZxbegeFpNEUkXvq+O40hUM1yO/kHmFc2MjvAjy9juMDG54XNIql4fDVUD9cvvuJaqmKahCjrzKY0IEnYtvYlb63Ol7CExOWH3jby8axVrb5wFOTtYWTJ2MuepmAzgI9BufetzPCUWcQeaTgOzlNTUzT8Eld6iY93GF71q7ccIGIvOw42itmUIgcUOObVa8Xfsst6IQ1d6ZVZLSSkGOlD23CnagoUOYXvLC/SQ5eP6ARLbGWGWCA6e7K8M8gE+ia4KhgLKrFJQXOs7JoVqUFEN1Wsx+61cOnxGgmLHOsgnsH5I3Li3QhtNYSkb1HelY37ChX9AdXWw4Cs59iSISYIloF37EU7ubNWnQ5Ol4Sti+TXGqhGoEYxxL/u55tI+7SWRknCsxAtu875UpdOtCU7rZ6nbn5O9Aprwgoqx6g2ceL62HwJfuiyNY/YZEfYewnq5vn41arbRor2Sg9zFKJm13ltzUB6dwwsDzeke",
                  deviceToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJPcmdhbml6YXRpb25JRCI6IjMyOGFhYzY2LWQ5ZmYtNDk0Ny05MTc4LTFmNzkxMTMxODFjZCIsIklEIjoiNTE3OWNhZGYtOTEyMy00MzNlLWJjZjUtNzJjMjNmOTIyZWYyIiwiVHlwZSI6IkRldmljZSIsIkRldmljZUlEIjoiNTE3OWNhZGYtOTEyMy00MzNlLWJjZjUtNzJjMjNmOTIyZWYyIiwiU2Vzc2lvbkdlbiI6MCwiUmVnaW9uIjoibmEtZWFzdCIsImV4cCI6MTcwODQxODM4NCwiaWF0IjoxNzA4MzU4Mzg0LCJpc3MiOiJ1cm46ZGVlcGFmZmV4In0.hTiIxoG8Q-yZPr2YzOyyuTseVQrnuuk8Lpy31k26oow",
                  age: "18",
                  //locale: MeasurementLocale.en,
                  gender: MeasurementGender.male,
                  height: '180',
                  weight: '85'
              ),
              onMeasurementResult: (data, status) {
                if (status == MeasurementStatus.completed) {
                } else if (status == MeasurementStatus.measurementInProgress) {
                } else if (status == MeasurementStatus.firstChunkGenerated) {
                } else if (status == MeasurementStatus.finalChunkGenerated) {
                } else if (status == MeasurementStatus.failed) {}
              },
              onProgress: (value){},
            ),
            IconButton(
              padding: const EdgeInsets.only(left: 20, top: 10),
              onPressed: () {},
              color: Colors.black,
              icon: Icon(
                Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                size: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
