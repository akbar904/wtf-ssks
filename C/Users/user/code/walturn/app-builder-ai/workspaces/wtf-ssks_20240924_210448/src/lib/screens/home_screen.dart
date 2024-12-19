
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_app/cubits/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Counter App'),
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text(
							'You have pushed the button this many times:',
						),
						BlocBuilder<CounterCubit, int>(
							builder: (context, count) {
								return Text(
									'$count',
									style: Theme.of(context).textTheme.headline4,
								);
							},
						),
						ElevatedButton(
							onPressed: () => context.read<CounterCubit>().increment(),
							child: Text('Increment'),
						),
					],
				),
			),
		);
	}
}
