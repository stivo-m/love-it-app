abstract class IMatchFacade {
  Future<bool?>? setMatch({required String matchId}) {}
  Future<bool?>? setDislike({required String dislikeID}) {}
}
