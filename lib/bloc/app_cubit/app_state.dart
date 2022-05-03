import 'package:equatable/equatable.dart';
import 'package:monitest/repository/model/ApiResponse.dart';

abstract class AppState extends Equatable {}

class AppInitState extends AppState {
  @override
  List<Object?> get props => [];
}

class AppDataLoaded extends AppState {
  final Data apiResponse;

  AppDataLoaded(this.apiResponse);

  @override
  List<Object?> get props => [];
}
