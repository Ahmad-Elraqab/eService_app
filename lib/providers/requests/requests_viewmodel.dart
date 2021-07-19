import 'package:e_service_app/app/dependency.dart';
import 'package:e_service_app/model/request.dart';
import 'package:e_service_app/providers/login/login_viewmodel.dart';
import 'package:e_service_app/service/request_service/request_service.dart';
import 'package:flutter/cupertino.dart';

class RequestViewmodel extends ChangeNotifier {
  List<RequestModel> requests;
  bool _loading = false;
  bool _message = false;
  String _res;

  RequestsService get _service => dependency();
  LoginViewmodel get _userSession => dependency();

  get message => _message;
  set message(value) {
    _message = value;
    notifyListeners();
  }

  get res => _res;
  set res(value) {
    _res = value;
    notifyListeners();
  }

  get loading => _loading;
  set loading(value) {
    _loading = value;
    notifyListeners();
  }

  Future<List<RequestModel>> getRequest() async {
    requests = await _service.getRequestsList(_userSession.user.id, "false");

    return requests;
  }

  Future<bool> updateRequest() async {
    bool status;
    return status;
  }

  Future makeRequest(Map data) async {
    loading = true;

    final request = _service.makeRequest(data);

    if (request == null) {
      res = "Failed to make request";
      loading = false;
      message = true;
    } else {
      res = "Succceed to make request";
      loading = false;
      message = true;
    }
  }
}
