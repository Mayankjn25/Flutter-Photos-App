import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String code;
  final String message;

  Failure({
    this.code = '',
    this.message = '',
  });

  @override
  // TODO: implement props
  List<Object> get props => [code, message];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
