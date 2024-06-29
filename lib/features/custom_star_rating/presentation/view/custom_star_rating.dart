import 'package:flutter/material.dart';

class CustomStarRating extends StatefulWidget {
  final double initialRating;
  final ValueChanged<double> onRatingChanged;

  const CustomStarRating({super.key, 
    required this.initialRating,
    required this.onRatingChanged,
  });

  @override
  _CustomStarRatingState createState() => _CustomStarRatingState();
}

class _CustomStarRatingState extends State<CustomStarRating> {
  double _currentRating = 0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        final isSelected = index < _currentRating;
        return GestureDetector(
          onTap: () {
            setState(() {
              _currentRating = index + 1.0;
              widget.onRatingChanged(_currentRating);
            });
          },
          child: Icon(
            isSelected ? Icons.star : Icons.star_border,
            color: Colors.amber,
          ),
        );
      }),
    );
  }
}
