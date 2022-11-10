part of 'launch_bloc.dart';

abstract class LaunchEvent extends Equatable {
  const LaunchEvent();

  @override
  List<Object> get props => [];
}

//Events:
//Get Launch
//Update Launch

class GetLaunch extends LaunchEvent {
  const GetLaunch();

  @override
  List<Object> get props => [];
}

class UpdateLaunch extends LaunchEvent {
  const UpdateLaunch();

  @override
  List<Object> get props => [];
}
