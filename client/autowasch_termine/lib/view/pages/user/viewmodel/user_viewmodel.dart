import 'package:autowasch_termine/core/base/service/user_service_interface.dart';
import 'package:autowasch_termine/product/controllers/user_controller.dart';
import 'package:autowasch_termine/product/enum/user_enums.dart';
import 'package:autowasch_termine/product/models/autowash_model.dart';
import 'package:autowasch_termine/product/models/booking_model.dart';
import 'package:autowasch_termine/view/pages/user/service/fake_user_service.dart';

class UserViewModel extends IUserService {
  IUserService _userService = FakeUserService();
  UserController _userController = UserController.instance;
  @override
  Future<void> addBooking(Booking booking) {
    // TODO: implement addBooking
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBooking(String plate) {
    // TODO: implement deleteBooking
    throw UnimplementedError();
  }

  @override
  Future<List<Autowash>?> fetchAutowashList() async {
    _userController.autowashLoadingState = AutowashLoadingState.LOADING;
    var list = await _userService.fetchAutowashList();
    if (list != null) {
      _userController.autowashLoadingState = AutowashLoadingState.LOADED;
      return list;
    } else {
      _userController.autowashLoadingState = AutowashLoadingState.ERROR;
      return null;
    }
  }
}