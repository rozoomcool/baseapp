import 'package:baseapp/domain/model/course/course.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoourseRepository {

  final Dio _dio = GetIt.I<Dio>();
    final AuthSharedRepository authSharedRepository = AuthSharedRepository(GetIt.I<SharedPreferences>());


  Future<List<Course>?> getAll() async {
    var response = await _dio.get("/course", options: Options(headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${authSharedRepository.getAccessToken()}"
    }));
    if (response.statusCode == 200) {
      return (response.data as List).map<Course>((el) => Course.fromJson(el)).toList();
    }
    return null;
  }

  Future<Course?> getById(int id) async {
    var response = await _dio.get("/course/${id}", options: Options(headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${authSharedRepository.getAccessToken()}"
    }));
    if (response.statusCode == 200) {
      return Course.fromJson(response.data);
    }
    return null;
  }

  Future<Course?> save(Course course) async {
    var response = await _dio.post("/course", data: course.toJson(), options: Options(headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${authSharedRepository.getAccessToken()}"
    }));
    if (response.statusCode == 200) {
      return Course.fromJson(response.data);
    }
    return null;
  }
}