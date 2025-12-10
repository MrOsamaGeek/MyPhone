part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class LodingApp extends AppState {}
final class SuccessfullyApp extends AppState {}
final class ErrorApp extends AppState {}
