
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/widgets/increment_button.dart';

void main() {
	group('IncrementButton Widget Tests', () {
		testWidgets('IncrementButton has an ElevatedButton with text "Increment by 10"', (WidgetTester tester) async {
			// Arrange
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: IncrementButton(),
					),
				),
			);

			// Act
			final incrementButtonFinder = find.byType(ElevatedButton);
			final incrementButtonTextFinder = find.text('Increment by 10');

			// Assert
			expect(incrementButtonFinder, findsOneWidget);
			expect(incrementButtonTextFinder, findsOneWidget);
		});

		testWidgets('IncrementButton calls onPressed when tapped', (WidgetTester tester) async {
			// Arrange
			bool wasPressed = false;
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: IncrementButton(onPressed: () {
							wasPressed = true;
						}),
					),
				),
			);

			// Act
			final incrementButtonFinder = find.byType(ElevatedButton);
			await tester.tap(incrementButtonFinder);
			await tester.pump();

			// Assert
			expect(wasPressed, isTrue);
		});
	});
}
