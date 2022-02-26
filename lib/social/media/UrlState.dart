import 'package:equatable/equatable.dart';
import 'package:html/dom.dart';
import 'package:html/dom_parsing.dart';
import 'package:html/parser.dart';

class UrlState extends Equatable {

  @override
  List<Object> get props => [];
}

class correctNavigation extends UrlState{}
class badNavigation extends UrlState{
  final String error;

  badNavigation(this.error);

  @override
  List<Object> get props => [error];
}