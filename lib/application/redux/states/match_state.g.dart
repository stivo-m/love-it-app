// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchState _$$_MatchStateFromJson(Map<String, dynamic> json) =>
    _$_MatchState(
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      dislikes: (json['dislikes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_MatchStateToJson(_$_MatchState instance) =>
    <String, dynamic>{
      'matches': instance.matches,
      'dislikes': instance.dislikes,
    };
