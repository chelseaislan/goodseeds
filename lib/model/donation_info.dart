class DonationInfo {
  final String imageURL;
  final String donCategory;
  final String donTitle;
  final String donSubtitle;
  final int donProgress;
  final String donTarget;
  final String donExpiry;
  final Function() onButtonTap;

  DonationInfo(
    this.imageURL,
    this.donCategory,
    this.donTitle,
    this.donSubtitle,
    this.donProgress,
    this.donTarget,
    this.donExpiry,
    this.onButtonTap,
  );
}
