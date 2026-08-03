import 'package:blocex/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';
import 'event.dart';
import 'home1.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
//
// class MyApp extends StatelessWidget
// {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bloc Counter',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       // Provide the Bloc to the widget tree
//       home: BlocProvider(
//         create: (context) => CounterBloc(),
//         child: const MyHomePage(title: 'Bloc Counter Home Page'),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             // 4. UI: Use BlocBuilder to rebuild when state changes
//             BlocBuilder<CounterBloc, CounterState>(
//               builder: (context, state) {
//                 return Text(
//                   '${state.count}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // 5. Trigger Logic: Add an event to the Bloc
//           context.read<CounterBloc>().add(IncrementRequested());
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
