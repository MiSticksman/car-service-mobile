import 'package:car_service_app/data/service/profile_service.dart';
import 'package:car_service_app/util/lifecycle_component.dart';

class ProfileUseCase implements LifeCycleComponent {
  final ProfileService profileService;

  ProfileUseCase(
    this.profileService,
  );

  @override
  void init() {
    // TODO: implement init
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
