import 'package:bloc_tutorial/core/controllers/session_controller/base_session_controller.dart';
import 'package:bloc_tutorial/core/controllers/session_controller/session_controller.dart';
import 'package:bloc_tutorial/core/services/alert_services/alert_services.dart';
import 'package:bloc_tutorial/core/services/alert_services/base_alert_services.dart';
import 'package:bloc_tutorial/core/services/media_services/base_media_services.dart';
import 'package:bloc_tutorial/core/services/media_services/media_services.dart';
import 'package:bloc_tutorial/core/services/navigation_services/base_navigation_services.dart';
import 'package:bloc_tutorial/core/services/navigation_services/navigation_services.dart';
import 'package:bloc_tutorial/core/services/storage_services/base_storage_services.dart';
import 'package:bloc_tutorial/core/services/storage_services/storage_services.dart';
import 'package:bloc_tutorial/repository/base_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../../repository/repositories/repository.dart';

final GetIt getIt = GetIt.instance;
class ServiceLocator {
  void init() {
    try {

/*      Registering Factories
      If you need a new instance of a class each time you call it, use registerFactory:
    locator.registerFactory<MyModel>(() => MyModelImpl());


    Asynchronous Dependencies
    For dependencies requiring async initialization, get_it offers registerSingletonAsync:

    locator.registerSingletonAsync<DatabaseService>(() async {
    var service = DatabaseService();
    await service.init();
    return service;
    });


    Scoped Access
    get_it also supports creating scopes, allowing you to manage different instances of the same class in different parts of your app:

    var newScope = locator.createScope('scope1');
    newScope.registerLazySingleton<MyModel>(() => MyModelImpl());*/



      getIt.registerLazySingleton<BaseNavigationServices>(() => NavigationServices());
      getIt.registerLazySingleton<BaseMediaServices>(() => MediaServices());
      getIt.registerLazySingleton<BaseAlertServices>(() => AlertServices());
      getIt.registerLazySingleton<BaseRepository>(() => Repository());
      getIt.registerLazySingleton<BaseStorageServices>(() => StorageServices());
      getIt.registerLazySingleton<BaseSessionController>(() => SessionController());

      debugPrint("Is NavigationServices registered? ${getIt.isRegistered<BaseNavigationServices>()}");
      debugPrint("Is MediaServices registered? ${getIt.isRegistered<BaseMediaServices>()}");
      debugPrint("Is AlertServices registered? ${getIt.isRegistered<BaseAlertServices>()}");
      debugPrint("Is Repository registered? ${getIt.isRegistered<BaseRepository>()}");
      debugPrint("Is StorageServices registered? ${getIt.isRegistered<BaseStorageServices>()}");
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
