// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class DetailsScreenState {}

class DetailsScreenInatial extends DetailsScreenState {}

class DetailsScreenLoading extends DetailsScreenState {}

class DetailsScreenError extends DetailsScreenState {
  Fauilers fauilers;
  DetailsScreenError({
    required this.fauilers,
  });
}

class DetailsScreenSuccess extends DetailsScreenState {
  DetailsEntity details;
  DetailsScreenSuccess({
    required this.details,
  });
}

class SimilerScreenSuccess extends DetailsScreenState {
  SimilerEntity details;
  SimilerScreenSuccess({
    required this.details,
  });
}
