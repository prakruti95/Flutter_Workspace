// 3. Define Logic (Bloc)
import 'package:blocex/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>
{
  CounterBloc() : super(CounterState(5)) {
    on<IncrementRequested>((event, emit) {
      emit(CounterState(state.count + 1));
    });
  }
}
