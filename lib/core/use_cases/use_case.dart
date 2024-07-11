import 'package:fpdart/fpdart.dart';
import 'package:rivan/core/errors/failiures.dart';

abstract interface class UseCase<SuccessType,Params>{
  Future<Either<Failure,SuccessType>>call(Params params);
}