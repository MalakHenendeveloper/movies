// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/data_source/BrowseDatasource.dart' as _i944;
import '../../data/data_source/BrowseDatasourceimp.dart' as _i296;
import '../../data/data_source/DetailsSource.dart' as _i466;
import '../../data/data_source/DetailsSourceImp.dart' as _i16;
import '../../data/data_source/HomedataSource.dart' as _i59;
import '../../data/data_source/HomeDataSourceImp.dart' as _i620;
import '../../data/data_source/SearchData.dart' as _i653;
import '../../data/data_source/SearchDataImp.dart' as _i820;
import '../../data/repository/BrowseRepositoryImp.dart' as _i856;
import '../../data/repository/DetailsRepositoryImp.dart' as _i254;
import '../../data/repository/HomerepositoryImp.dart' as _i589;
import '../../data/repository/SearchRepositoryimp.dart' as _i122;
import '../../domain/repository/BrowseCategory.dart' as _i59;
import '../../domain/repository/DetailsRepository.dart' as _i985;
import '../../domain/repository/HomeRepository.dart' as _i736;
import '../../domain/repository/SearchRepository.dart' as _i328;
import '../../domain/Usecase/BrowseUsecase.dart' as _i327;
import '../../domain/Usecase/DetailsUsecase.dart' as _i506;
import '../../domain/Usecase/GetPopuler.dart' as _i205;
import '../../domain/Usecase/GetTopRated.dart' as _i494;
import '../../domain/Usecase/GetUpComping.dart' as _i489;
import '../../domain/Usecase/SearchUsecase.dart' as _i584;
import '../../domain/Usecase/SimilerUsecase.dart' as _i798;
import '../../ui/Browse/cubit/BrowseViewModel.dart' as _i672;
import '../../ui/datelisScreen/cubit/DetailsviewModel.dart' as _i966;
import '../../ui/Home/cubit/HomeScreenViewModel.dart' as _i430;
import '../../ui/Search/cubit/searchviewmodel.dart' as _i327;
import '../Api/Api.dart' as _i66;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i66.ApiManger>(() => _i66.ApiManger());
    gh.factory<_i466.Detailssource>(
        () => _i16.Detailssourceimp(apiManger: gh<_i66.ApiManger>()));
    gh.factory<_i59.HomeDataSource>(
        () => _i620.Homedatasourceimp(apiManger: gh<_i66.ApiManger>()));
    gh.factory<_i736.Homerepository>(() =>
        _i589.Homerepositoryimp(homeDataSource: gh<_i59.HomeDataSource>()));
    gh.factory<_i944.Browsedatasource>(
        () => _i296.Browsedatasourceimp(apiManger: gh<_i66.ApiManger>()));
    gh.factory<_i653.SearchData>(
        () => _i820.SearchDataImp(apiManger: gh<_i66.ApiManger>()));
    gh.factory<_i985.Detailsrepository>(() =>
        _i254.Detailsrepositoryimp(detailssource: gh<_i466.Detailssource>()));
    gh.factory<_i205.GetpopulerUsecase>(() =>
        _i205.GetpopulerUsecase(homerepository: gh<_i736.Homerepository>()));
    gh.factory<_i494.GettopratedUseCase>(() =>
        _i494.GettopratedUseCase(homerepository: gh<_i736.Homerepository>()));
    gh.factory<_i489.GetupcompingUseCase>(() =>
        _i489.GetupcompingUseCase(homerepository: gh<_i736.Homerepository>()));
    gh.factory<_i430.Homescreenviewmodel>(() => _i430.Homescreenviewmodel(
          populerusecase: gh<_i205.GetpopulerUsecase>(),
          UpCompingusecase: gh<_i489.GetupcompingUseCase>(),
          Topusecase: gh<_i494.GettopratedUseCase>(),
        ));
    gh.factory<_i59.BrowsecategoryRepository>(
        () => _i856.Browserepositoryimp(browse: gh<_i944.Browsedatasource>()));
    gh.factory<_i506.Detailsusecase>(() =>
        _i506.Detailsusecase(detailsrepository: gh<_i985.Detailsrepository>()));
    gh.factory<_i798.Similerusecase>(() =>
        _i798.Similerusecase(detailsrepository: gh<_i985.Detailsrepository>()));
    gh.factory<_i328.SearchRepository>(
        () => _i122.SearchRepsitoryimp(data: gh<_i653.SearchData>()));
    gh.factory<_i327.Browseusecase>(
        () => _i327.Browseusecase(browse: gh<_i59.BrowsecategoryRepository>()));
    gh.factory<_i966.Detailsviewmodel>(() => _i966.Detailsviewmodel(
          detailsusecase: gh<_i506.Detailsusecase>(),
          similerusecase: gh<_i798.Similerusecase>(),
        ));
    gh.factory<_i584.SearchUsecase>(
        () => _i584.SearchUsecase(search: gh<_i328.SearchRepository>()));
    gh.factory<_i327.Searchviewmodel>(
        () => _i327.Searchviewmodel(searchusecase: gh<_i584.SearchUsecase>()));
    gh.factory<_i672.Browseviewmodel>(
        () => _i672.Browseviewmodel(browseusecase: gh<_i327.Browseusecase>()));
    return this;
  }
}
