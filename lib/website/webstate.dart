import 'package:equatable/equatable.dart';

class WebState extends Equatable{

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Visited extends WebState{}
class nonVisited extends WebState{
  final String error;

  nonVisited(this.error);

  @override
  List<Object> get props => [error];
}


