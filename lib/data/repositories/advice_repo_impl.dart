import 'package:training_flutter/data/datasources/advice_remote_datasource.dart';
import 'package:training_flutter/data/exceptions/exceptions.dart';
import 'package:training_flutter/domain/failures/failures.dart';
import 'package:training_flutter/domain/entities/advice_entity.dart';
import 'package:training_flutter/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDatasource adviceRemoteDatasource =
      AdviceRemoteDatasourceImpl();
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource() async {
    try {
      final result = await adviceRemoteDatasource.getRandomAdviceFromApi();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}
