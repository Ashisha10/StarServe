import 'package:flutter/material.dart';
import 'constants.dart';

class CardHolder extends StatefulWidget {
  String eventName;
  String eventDateTime;
  String eventAddr;
  String eventDesc;
  String eventDist;
  final bool showLocIcon;
  final bool showHeartIcon;
  final bool showDistance;

  CardHolder({
    required this.eventName,
    required this.eventDateTime,
    required this.eventAddr,
    required this.eventDesc,
    required this.eventDist,
    this.showLocIcon = true,
    this.showDistance = true,
    this.showHeartIcon = true,
  });

  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  bool isHeartTapped = false;

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
                      widget.eventName,
                      style: appBranding.copyWith(fontSize: 30.0),
                    ),
                    Text(
                      widget.eventDateTime,
                      style: appBranding.copyWith(fontSize: 15.0),
                    ),
                    Text(
                      widget.eventAddr,
                      style: appBranding.copyWith(fontSize: 15.0),
                    ),
                    Text(
                      widget.eventDesc,
                      style: appBranding.copyWith(fontSize: 15.0),
                    ),
                  ],
                ),
                Spacer(), // Adds space between text and button
                Column(
                  children: [
                    if(widget.showHeartIcon)
                    IconButton(
                      iconSize: 35,
                      color: isHeartTapped ? Colors.pinkAccent[100] : Colors.grey, // Change color based on tap state
                      icon: Icon(isHeartTapped ? Icons.favorite : Icons.favorite_border),
                      onPressed: () {
                        // Handle icon press
                        setState(() {
                          isHeartTapped = !isHeartTapped; // Toggle tap state
                        });
                      },
                    ),
                    if (widget.showLocIcon)
                    IconButton(
                      iconSize: 35,
                      color: lightYellow,
                      icon: const Icon(Icons.pin_drop_outlined),
                      onPressed: () {
                        // ...
                      },
                    ),
                    if (widget.showDistance)
                    Text(
                      widget.eventDist,
                     style: appBranding.copyWith(fontSize: 15.0),)
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
