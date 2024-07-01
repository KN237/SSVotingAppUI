class Vote {
  Vote({required this.id, required this.candidats});
  int id;
  List<CandidatVote> candidats;
}

class CandidatVote {
  CandidatVote({required this.candidatId, required this.pourcentage});
  String candidatId;
  double pourcentage;
}
