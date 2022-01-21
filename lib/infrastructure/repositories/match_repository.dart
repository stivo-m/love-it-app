import 'package:dio/dio.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/infrastructure/config/config.dart';
import 'package:love_it_app/infrastructure/facades/i_match_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MatchRepository implements IMatchFacade {
  @override
  Future<bool?>? setDislike({
    required String dislikeID,
  }) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? token = preferences.getString(apiToken);
    AppHTTPClient(token: token);
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.post(
      '/match/addDislike',
      data: <String, dynamic>{
        'hasDisliked': dislikeID,
      },
    );

    return response.data['matched'] as bool;
  }

  @override
  Future<bool?>? setMatch({
    required String matchId,
  }) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? token = preferences.getString(apiToken);
    AppHTTPClient(token: token);
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.post(
      '/match/addMatch',
      data: <String, dynamic>{
        'matchID': matchId,
      },
    );

    return response.data['haveMatched'] as bool;
  }
}
