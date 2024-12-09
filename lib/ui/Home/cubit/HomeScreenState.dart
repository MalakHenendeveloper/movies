// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movies/domain/Entites/Top_Rated.dart';
import 'package:movies/domain/Entites/Upcomaping.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Homescreenstate {}

class HomeScreenInatial extends Homescreenstate {}

class HomeScreenLoading extends Homescreenstate {}

class HomeScreenError extends Homescreenstate {
  Fauilers fauilers;
  HomeScreenError({
    required this.fauilers,
  });
}

class HomeScreenSuccesPopuler extends Homescreenstate {
  PopulerEntity populer;

  HomeScreenSuccesPopuler({
    required this.populer,
  });
}

class HomeScreenSuccesTop extends Homescreenstate {
  TopRatedEntity top;

  HomeScreenSuccesTop({required this.top});
}

class HomeScreenSuccesUpcomping extends Homescreenstate {
  UpCompingEntity upComping;

  HomeScreenSuccesUpcomping({
    required this.upComping,
  });
}
