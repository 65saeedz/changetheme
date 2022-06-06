part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class ChangeTheme extends ThemeEvent {
  final int randNumber;
  
  const ChangeTheme({
    required this.randNumber,
  });

  @override
  List<Object> get props => [randNumber];
}
