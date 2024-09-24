
class CounterState {
	final int value;

	const CounterState({required this.value});

	Map<String, int> toJson() {
		return {'value': value};
	}

	factory CounterState.fromJson(Map<String, int> json) {
		return CounterState(value: json['value']!);
	}
}
