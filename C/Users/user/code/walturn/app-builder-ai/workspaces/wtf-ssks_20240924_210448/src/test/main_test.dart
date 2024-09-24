
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:counter_app/main.dart';

void main() {
	group('Main App Initialization', () {
		testWidgets('App initializes correctly', (tester) async {
			await tester.pumpWidget(MyApp());

			// Verify MyApp is present
			expect(find.byType(MyApp), findsOneWidget);
		});

		testWidgets('HomeScreen is the initial screen', (tester) async {
			await tester.pumpWidget(MyApp());

			// Verify HomeScreen is present
			expect(find.byType(HomeScreen), findsOneWidget);
		});
	});
}
