
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/widgets/counter_display.dart';

void main() {
	group('CounterDisplay Widget Tests', () {
		testWidgets('displays the initial counter value', (WidgetTester tester) async {
			// Arrange
			const int initialValue = 0;
			const widget = MaterialApp(
				home: Scaffold(
					body: CounterDisplay(value: initialValue),
				),
			);

			// Act
			await tester.pumpWidget(widget);

			// Assert
			expect(find.text('0'), findsOneWidget);
		});

		testWidgets('displays the updated counter value', (WidgetTester tester) async {
			// Arrange
			const int updatedValue = 10;
			const widget = MaterialApp(
				home: Scaffold(
					body: CounterDisplay(value: updatedValue),
				),
			);

			// Act
			await tester.pumpWidget(widget);

			// Assert
			expect(find.text('10'), findsOneWidget);
		});
	});
}
