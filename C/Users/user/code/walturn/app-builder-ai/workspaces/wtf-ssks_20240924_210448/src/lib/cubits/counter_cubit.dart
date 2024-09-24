
import 'package:flutter_bloc/flutter_bloc.dart';

// CounterState class to represent the state of the counter
class CounterState {
	final int value;

	CounterState(this.value);

	@override
	bool operator ==(Object other) =>
		identical(this, other) ||
		other is CounterState &&
			runtimeType == other.runtimeType &&
			value == other.value;

	@override
	int get hashCode => value.hashCode;
}

// CounterCubit class to manage the state of the counter
class CounterCubit extends Cubit<CounterState> {
	CounterCubit() : super(CounterState(0));

	// Increment the counter's state by 10
	void increment() {
		emit(CounterState(state.value + 10));
	}
}
