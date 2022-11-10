import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex_launch/data/repos/launch_repo.dart';

import '../../data/models/launch.dart';

part 'launch_event.dart';
part 'launch_state.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  final LaunchRepo? launchRepo;
  LaunchBloc(this.launchRepo) : super(LaunchInitial()) {
    on<GetLaunch>(_onGetLaunch);
    on<UpdateLaunch>(_onUpdateLaunch);
  }

  ///Get Launch Event

  Future<void> _onGetLaunch(GetLaunch event, Emitter<LaunchState> emit) async {
    emit(const LaunchLoading());
    try {
      final launch = await launchRepo?.getFinalLaunch();
      emit(LaunchLoaded(launch!));
    } catch (e) {
      emit(const LaunchError("Error loading the launch!"));
    }
  }

  ///Update Launch Event

  Future<void> _onUpdateLaunch(
      UpdateLaunch event, Emitter<LaunchState> emit) async {
    //It seems the same as Get
    emit(const LaunchLoading());
    try {
      final launch = await launchRepo?.getFinalLaunch();
      emit(LaunchLoaded(launch!));
    } catch (e) {
      emit(const LaunchError("Error loading the launch!"));
    }
  }
}
