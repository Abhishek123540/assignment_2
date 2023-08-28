import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/lessonsmodel.dart';
import '../models/programsmodel.dart';

class APICalling {
  Future<LessonsModel?> getlessons() async {
    LessonsModel lessonsModel;
    try {
      http.Response response = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons"),
      );
      if (response.statusCode == 200) {
        lessonsModel = LessonsModel.fromJson(jsonDecode(response.body));
        print(jsonDecode(response.body)['items'][1]['name']);
        return lessonsModel;
      }
      return null;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<ProgramsModel?> getPrograms() async {
    ProgramsModel programsModel;
    try {
      http.Response response = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs"),
      );
      if (response.statusCode == 200) {
        programsModel = ProgramsModel.fromJson(jsonDecode(response.body));
        return programsModel;
      }
      return null;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
