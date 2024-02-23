import 'package:car_service_app/domain/model/profile/request/email_auth_request.dart';
import 'package:car_service_app/domain/url/profile_url.dart';
import 'package:car_service_app/domain/model/profile/request/update_profile_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'profile_service.g.dart';

@RestApi()
abstract class ProfileService {
  factory ProfileService(Dio dio, {String baseUrl}) = _ProfileService;
  
  
  @GET(ProfileUrl.profileInfo)
  Future<void> getProfileInfo();


  @PATCH(ProfileUrl.profileInfo)
  //TODO response
  Future<void> postV1ProfileInfo({
    @Body() required UpdateProfileRequest request,
  });


  @POST(ProfileUrl.emailAuth)
  // TODO response
  Future<void> smsAuth({
    @Body() required EmailAuthRequest request,
  });
}