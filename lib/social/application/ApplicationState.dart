import 'package:equatable/equatable.dart';

class ApplicationState extends Equatable{
  const ApplicationState();

  @override
  List<Object> get props => [];
}

class SocialSuccess extends ApplicationState{}

class SocialFailure extends ApplicationState{
  final String message;

  SocialFailure(this.message);

  @override
  List<Object> get props => [message];
}