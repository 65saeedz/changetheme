part of 'theme_bloc.dart';

enum ThemeStatus { light, dark }

class ThemeState extends Equatable {
  final ThemeStatus themeStatus;

  const ThemeState({required this.themeStatus});

  factory ThemeState.initial() {
    return const ThemeState(themeStatus: ThemeStatus.light);
  }

  ThemeState copywith(ThemeStatus? themeStatus) {
    return ThemeState(themeStatus: themeStatus ?? this.themeStatus);
  }

  @override
  List<Object> get props => [themeStatus];

  @override
  bool get stringify => true;
}
