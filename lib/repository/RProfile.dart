import 'package:capstone/models/MPReport.dart';
import 'package:capstone/models/MPSubject.dart';
import 'package:capstone/models/MProfile.dart';
import 'package:capstone/provider/PProfile.dart';

class RProfile { 
  final _init = PProfile();
  Future<MProfile> getProfile(String token) => _init.getProfile(token);

  Future<MPReport> getReport(String token) => _init.getReport(token);

  Future<MPSubject> getSubject(String token) => _init.getSubject(token);

}