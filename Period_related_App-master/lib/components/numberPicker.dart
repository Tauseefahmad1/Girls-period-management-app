import 'package:flutter/cupertino.dart';

class NumberPicker extends StatefulWidget {
  @override
  _NumberPickerState createState() => _NumberPickerState();
}

class _NumberPickerState extends State<NumberPicker> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: CupertinoPicker(
        scrollController:
            FixedExtentScrollController(initialItem: selectedNumber - 1),
        itemExtent: 48,
        onSelectedItemChanged: (int index) {
          setState(() {
            selectedNumber = index + 1;
          });
        },
        children: [
          for (int i = 1; i <= 30; i++)
            Center(
              child: Text(
                i.toString(),
                style: TextStyle(fontSize: 32),
              ),
            ),
        ],
      ),
    );
  }
}

class DobPicker extends StatefulWidget {
  @override
  _DobPickerState createState() => _DobPickerState();
}

class _DobPickerState extends State<DobPicker> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: CupertinoPicker(
        scrollController:
            FixedExtentScrollController(initialItem: selectedNumber - 1),
        itemExtent: 48,
        onSelectedItemChanged: (int index) {
          setState(() {
            selectedNumber = index + 1;
          });
        },
        children: [
          for (int i = 1932; i <= 2100; i++)
            Center(
              child: Text(
                i.toString(),
                style: TextStyle(fontSize: 32),
              ),
            ),
        ],
      ),
    );
  }
}
