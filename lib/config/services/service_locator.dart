

// import 'package:get_it/get_it.dart';



// final sl = GetIt.instance;

// class ServicesLocator {
//   void init() {
//     ///cubit

//     sl.registerFactory(() =>
//         BookingCubit(createBookingUseCase: sl(), getBookingUseCase: sl()));

//     sl.registerFactory(() => AuthCubit(
//         profileInfoUseCase: sl(),
//         updateProfileUseCase: sl(),
//         loginUseCase: sl(),
//         registerUseCase: sl()));

//     sl.registerFactory(() => ExploreCubit(getHotelsUseCase: sl()));

//     sl.registerFactory(() => SearchCubit(getSearchUseCase: sl()));

//     ///BLoc

//     //   sl.registerFactory(() => ExploreBloc(getHotelsUseCase: sl()));
//     sl.registerFactory(() => AuthBloc(
//         loginUseCase: sl(),
//         registerUseCase: sl(),
//         profileInfoUseCase: sl(),
//         updateProfileUseCase: sl()));

//     ///Use cases
//     sl.registerLazySingleton(
//         () => GetSearchUseCase(baseSearchRepository: sl()));
//     sl.registerLazySingleton(() => GetHotelsUseCase(baseRepository: sl()));
//     sl.registerLazySingleton(() => LoginUseCase(baseRepository: sl()));
//     sl.registerLazySingleton(() => RegisterUseCase(authBaseRepository: sl()));
//     sl.registerLazySingleton(
//         () => GetProfileInfoUseCase(authBaseRepository: sl()));
//     sl.registerLazySingleton(
//         () => UpdateProfileUseCase(authBaseRepository: sl()));
//     sl.registerLazySingleton(
//         () => CreateBookingUseCase(bookingBaseRepository: sl()));
//     sl.registerLazySingleton(
//         () => GetBookingUseCase(bookingBaseRepository: sl()));

//     ///BaseRepository
//     sl.registerLazySingleton<SearchBaseRepository>(
//         () => SearchRepository(sl()));
//     sl.registerLazySingleton<ExploreBaseRepository>(
//         () => ExploreRepository(sl()));
//     sl.registerLazySingleton<AuthBaseRepository>(() => AuthRepository(sl()));
//     sl.registerLazySingleton<BookingBaseRepository>(
//         () => BookingRepository(bookingBaseRemoteDataSource: sl()));

//     ///BaseRemotDataSource
//     sl.registerLazySingleton<SearchBaseRemoteDataSource>(
//         () => SearchRemoteDataSource());
//     sl.registerLazySingleton<ExploreBaseRemoteDataSource>(
//         () => ExploreRemoteDataSource());
//     sl.registerLazySingleton<AuthBaseRemoteDataSource>(
//         () => AuthRemoteDataSource());

//     sl.registerLazySingleton<BookingBaseRemoteDataSource>(
//         () => BookingRemoteDataSource());
//   }
// }
