import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeTheme>((event, emit) {
      int eventEntryNumber = event.randNumber;
      print(eventEntryNumber.isEven);

      eventEntryNumber.isEven
          ? emit(state.copywith(ThemeStatus.light))
          : emit(state.copywith(ThemeStatus.dark));
    });
  }
}
