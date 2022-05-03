import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monitest/repository/app_repository.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final repository = AppRepository(Dio());

  AppCubit() : super(AppInitState()) {
    init();
  }

  void init() {
    repository.getAgentInformation().then((value) {
      emit(AppDataLoaded(value.data!));
    }).catchError((e) {
      print('This is error $e');
    });
  }
}
