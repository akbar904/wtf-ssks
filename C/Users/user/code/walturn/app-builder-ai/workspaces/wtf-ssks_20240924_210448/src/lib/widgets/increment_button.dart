
import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
	final VoidCallback? onPressed;

	IncrementButton({this.onPressed});

	@override
	Widget build(BuildContext context) {
		return ElevatedButton(
			onPressed: onPressed,
			child: Text('Increment by 10'),
		);
	}
}
