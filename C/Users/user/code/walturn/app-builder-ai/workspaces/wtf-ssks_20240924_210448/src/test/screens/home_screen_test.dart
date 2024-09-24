
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:counter_app/screens/home_screen.dart';

class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
	group('HomeScreen Widget Tests', () {
		testWidgets('should display the initial counter value', (WidgetTester tester) async {
			await tester.pumpWidget(MaterialApp(home: HomeScreen()));

			expect(find.text('0'), findsOneWidget);
		});

		testWidgets('should display the increment button', (WidgetTester tester) async {
			await tester.pumpWidget(MaterialApp(home: HomeScreen()));

			expect(find.byType(ElevatedButton), findsOneWidget);
		});

		testWidgets('should increment the counter when button is pressed', (WidgetTester tester) async {
			final mockCounterCubit = MockCounterCubit();
			whenListen(
				mockCounterCubit,
				Stream.fromIterable([0, 10]),
				initialState: 0,
			);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider<CounterCubit>(
						create: (context) => mockCounterCubit,
						child: HomeScreen(),
					),
				),
			);

			await tester.tap(find.byType(ElevatedButton));
			await tester.pump(); // Rebuild the widget tree

			expect(find.text('10'), findsOneWidget);
		});
	});
}
