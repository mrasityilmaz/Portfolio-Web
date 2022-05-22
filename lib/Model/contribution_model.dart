class ContributionModel {
  String myContributionsDesc;
  String appOrTaskName;
  String? appIcon;
  // First index at Cover Photo
  List<String> photoPaths;

  ContributionModel({
    required this.myContributionsDesc,
    required this.appOrTaskName,
    this.appIcon,
    required this.photoPaths,
  });
}
