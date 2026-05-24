// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:final_delivery_ai/core/network/auth_interceptor.dart' as _i565;
import 'package:final_delivery_ai/core/network/dio_client.dart' as _i1061;
import 'package:final_delivery_ai/core/repositories/common_repository.dart'
    as _i1011;
import 'package:final_delivery_ai/core/repositories/common_repository_impl.dart'
    as _i867;
import 'package:final_delivery_ai/core/services/local_storage_service.dart'
    as _i902;
import 'package:final_delivery_ai/core/services/location_service.dart' as _i274;
import 'package:final_delivery_ai/core/services/socket_service.dart' as _i323;
import 'package:final_delivery_ai/features/authentication/data/datasources/auth_remote_data_source.dart'
    as _i930;
import 'package:final_delivery_ai/features/authentication/data/repositories/auth_repository_impl.dart'
    as _i353;
import 'package:final_delivery_ai/features/authentication/domain/repositories/auth_repository.dart'
    as _i872;
import 'package:final_delivery_ai/features/authentication/presentation/bloc/auth_bloc.dart'
    as _i242;
import 'package:final_delivery_ai/features/chats/data/datasources/chat_remote_data_source.dart'
    as _i442;
import 'package:final_delivery_ai/features/chats/data/repositories/chat_repository_impl.dart'
    as _i676;
import 'package:final_delivery_ai/features/chats/domain/repositories/chat_repository.dart'
    as _i536;
import 'package:final_delivery_ai/features/chats/presentation/bloc/chat_bloc.dart'
    as _i676;
import 'package:final_delivery_ai/features/home/data/datasources/home_remote_data_source.dart'
    as _i137;
import 'package:final_delivery_ai/features/home/data/repositories/home_repository_impl.dart'
    as _i605;
import 'package:final_delivery_ai/features/home/domain/repositories/home_repository.dart'
    as _i950;
import 'package:final_delivery_ai/features/home/presentation/bloc/home_bloc.dart'
    as _i993;
import 'package:final_delivery_ai/features/language/presentation/bloc/language_bloc.dart'
    as _i960;
import 'package:final_delivery_ai/features/orders/data/datasources/order_remote_data_source.dart'
    as _i743;
import 'package:final_delivery_ai/features/orders/data/repositories/order_repository_impl.dart'
    as _i1050;
import 'package:final_delivery_ai/features/orders/domain/repositories/order_repository.dart'
    as _i1066;
import 'package:final_delivery_ai/features/orders/presentation/bloc/order_bloc.dart'
    as _i381;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i274.LocationService>(() => _i274.LocationService());
    gh.lazySingleton<_i137.HomeRemoteDataSource>(
      () => _i137.HomeRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i902.LocalStorageService>(
      () => _i902.LocalStorageService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i743.OrderRemoteDataSource>(
      () => _i743.OrderRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i442.ChatRemoteDataSource>(
      () => _i442.ChatRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i1011.CommonRepository>(
      () => _i867.CommonRepositoryImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i930.AuthRemoteDataSource>(
      () => _i930.AuthRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i950.HomeRepository>(
      () => _i605.HomeRepositoryImpl(gh<_i137.HomeRemoteDataSource>()),
    );
    gh.lazySingleton<_i323.SocketService>(
      () => _i323.SocketService(gh<_i902.LocalStorageService>()),
    );
    gh.factory<_i565.AuthInterceptor>(
      () => _i565.AuthInterceptor(gh<_i902.LocalStorageService>()),
    );
    gh.lazySingleton<_i1066.OrderRepository>(
      () => _i1050.OrderRepositoryImpl(gh<_i743.OrderRemoteDataSource>()),
    );
    gh.factory<_i960.LanguageBloc>(
      () => _i960.LanguageBloc(gh<_i902.LocalStorageService>()),
    );
    gh.lazySingleton<_i536.ChatRepository>(
      () => _i676.ChatRepositoryImpl(gh<_i442.ChatRemoteDataSource>()),
    );
    gh.factory<_i993.HomeBloc>(
      () => _i993.HomeBloc(gh<_i950.HomeRepository>()),
    );
    gh.lazySingleton<_i872.AuthRepository>(
      () => _i353.AuthRepositoryImpl(
        gh<_i930.AuthRemoteDataSource>(),
        gh<_i902.LocalStorageService>(),
      ),
    );
    gh.factory<_i676.ChatBloc>(
      () => _i676.ChatBloc(gh<_i536.ChatRepository>()),
    );
    gh.factory<_i381.OrderBloc>(
      () => _i381.OrderBloc(gh<_i1066.OrderRepository>()),
    );
    gh.factory<_i242.AuthBloc>(
      () => _i242.AuthBloc(gh<_i872.AuthRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i1061.AppModule {}
