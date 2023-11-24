import 'package:flutter/material.dart';
import 'constants.dart';

class CardHolder extends StatelessWidget {
  String eventName;
  String eventDateTime;
  String eventAddr;
  String eventDesc;

  CardHolder({
    required this.eventName,
    required this.eventDateTime,
    required this.eventAddr,
    required this.eventDesc,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Card(
          color: navyBlue,
          margin: const EdgeInsets.all(5.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eventName,
                      style: appBranding.copyWith(fontSize: 30.0),
                    ),
                    Text(
                      eventDateTime,
                      style: appBranding.copyWith(fontSize: 15.0),
                    ),
                    Text(
                      eventAddr,
                      style: appBranding.copyWith(fontSize: 15.0),
                    ),
                    Text(
                      eventDesc,
                      style: appBranding.copyWith(fontSize: 15.0),
                    ),
                  ],
                ),
                Spacer(), // Adds space between text and button
                Column(
                  children: [
                    IconButton(
                      iconSize: 35,
                      color: lightYellow,
                      icon: const Icon(Icons.pin_drop_outlined),
                      onPressed: () {
                        // ...
                      },
                    ),
                    Text("1.2km", style: appBranding.copyWith(fontSize: 15.0),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
