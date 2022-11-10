part of 'launch_bloc.dart';

abstract class LaunchState extends Equatable {
  const LaunchState();

  @override
  List<Object> get props => [];
}

//States:
//LaunchInitial
//LaunchLoading
//LaunchLoaded
//LaunchError

class LaunchInitial extends LaunchState {}

class LaunchLoading extends LaunchState {
  const LaunchLoading();

  @override
  List<Object> get props => [];
}

class LaunchLoaded extends LaunchState {
  final Launch launch;
  const LaunchLoaded(this.launch);

  @override
  List<Object> get props => [launch];
}

class LaunchError extends LaunchState {
  final String? message;
  const LaunchError(this.message);

  @override
  List<Object> get props => [message!];
}
