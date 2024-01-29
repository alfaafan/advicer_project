import 'package:training_flutter/domain/entities/advice_entity.dart';
import 'package:training_flutter/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:training_flutter/theme.dart';

import '../../data/repositories/advice_repo_impl.dart';

class AdviceUseCases {
  final adviceRepo = AdviceRepoImpl();

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    // space for business logic
  }
}
