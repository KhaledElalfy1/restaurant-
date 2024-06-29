import 'package:aast_restuarant/helpers/chaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _breakfastTime = TimeOfDay.now();
  TimeOfDay _lunchTime = TimeOfDay.now();
  TimeOfDay _dinnerTime = TimeOfDay.now();

  Future<void> _saveTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('breakfast', _getTimeString('breakfast'));
    await prefs.setString('lunch', _getTimeString('lunch'));
    await prefs.setString('dinner', _getTimeString('dinner'));
  }

  String _getTimeString(String key) {
    TimeOfDay time = evalTimeOfDay(key);
    return time.format(context);
  }

  TimeOfDay evalTimeOfDay(String key) {
    switch (key) {
      case 'breakfast':
        return _breakfastTime;
      case 'lunch':
        return _lunchTime;
      case 'dinner':
        return _dinnerTime;
      default:
        return TimeOfDay.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker Example'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Breakfast: ${_getTimeString('breakfast')}'),
            TimePickerSpinner(
              is24HourMode: true,
              onTimeChange: (time) {
                setState(() {
                  _breakfastTime = time as TimeOfDay;
                });
              },
            ),
            const SizedBox(height: 16),
            Text('Lunch: ${_getTimeString('lunch')}'),
            TimePickerSpinner(
              is24HourMode: true,
              onTimeChange: (time) {
                setState(() {
                  _lunchTime = time as TimeOfDay;
                });
              },
            ),
            const SizedBox(height: 16),
            Text('Dinner: ${_getTimeString('dinner')}'),
            TimePickerSpinner(
              is24HourMode: true,
              onTimeChange: (time) {
                setState(() {
                  _dinnerTime = time as TimeOfDay;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _saveTime,
            tooltip: 'Save',
            child: const Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
