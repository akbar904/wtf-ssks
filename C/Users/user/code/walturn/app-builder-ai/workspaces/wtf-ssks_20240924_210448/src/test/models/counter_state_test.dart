
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:counter_app/models/counter_state.dart';

void main() {
	group('CounterState', () {
		test('should initialize with a given value', () {
			const initialValue = 0;
			final state = CounterState(value: initialValue);
			expect(state.value, initialValue);
		});

		test('should serialize to JSON correctly', () {
			const state = CounterState(value: 10);
			expect(state.toJson(), {'value': 10});
		});

		test('should deserialize from JSON correctly', () {
			const json = {'value': 20};
			final state = CounterState.fromJson(json);
			expect(state.value, 20);
		});
	});
}
