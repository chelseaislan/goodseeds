import 'package:get/get.dart';
import 'package:goodseeds/model/donation_info.dart';

class TrendingDonController extends GetxController {
  var donationInfo = <DonationInfo>[].obs;

  @override
  void onInit() {
    fetchDonation();
    super.onInit();
  }

  void fetchDonation() {
    var donationList = [
      DonationInfo(
        "https://cutt.ly/RbCtud9",
        "Humanitarian",
        "Supplies for the Palestinian People",
        "Since escalation began 5 days ago, 40 children were killed in the Gaza Strip & 2 in Israel.",
        73,
        "Rp10.000.000.000",
        "21 May 2021",
        () {},
      ),
      DonationInfo(
        "https://cutt.ly/YbCr6gb",
        "Religion",
        "Renovation for Masjid Baiturrahman",
        "Built in 2001, this mosque needs a lot more room to accomodate the increasing numbers of visitors.",
        55,
        "Rp5.000.000.000",
        "22 May 2021",
        () {},
      ),
      DonationInfo(
        "https://cutt.ly/abCtd36",
        "Foods and Drinks",
        "Foods for the Under-Nutritioned Kids",
        "During the developing phase, children must be filled with enough healthy and tasty foods.",
        59,
        "Rp2.000.000.000",
        "19 May 2021",
        () {},
      ),
    ];
    donationInfo.assignAll(donationList);
  }
}

class CustomDonController extends GetxController {
  var donationInfo = <DonationInfo>[].obs;

  @override
  void onInit() {
    fetchDonation();
    super.onInit();
  }

  void fetchDonation() {
    var donationList = [
      DonationInfo(
        "https://cutt.ly/mbCi85I",
        "Childbirth and Kids",
        "Help to Fund Anggi's Sickness Operation",
        "Anggi needs your tremendous help and support because the condition is getting worse every day.",
        98,
        "Rp8.000.000.000",
        "26 May 2021",
        () {},
      ),
      DonationInfo(
        "https://cutt.ly/3bCiGYx",
        "Religion",
        "Renovation of St. Mary Church (Manado)",
        "Built in 2005, this church needs a lot more room to accomodate the increasing numbers of visitors.",
        61,
        "Rp2.000.000.000",
        "31 May 2021",
        () {},
      ),
      DonationInfo(
        "https://cutt.ly/PbCiC0P",
        "Environmental Issues",
        "#TeamTrees by Mr. Beast - Bekasi Chapter",
        "Bekasi and almost all Indonesian cities need more trees and green public spaces to increase happiness.",
        89,
        "Rp3.000.000.000",
        "01 June 2021",
        () {},
      ),
    ];
    donationInfo.assignAll(donationList);
  }
}

class GSPDonController extends GetxController {
  var donationInfo = <DonationInfo>[].obs;

  @override
  void onInit() {
    fetchDonation();
    super.onInit();
  }

  void fetchDonation() {
    var donationList = [
      DonationInfo(
        "https://cutt.ly/mbCi85I",
        "Childbirth and Kids",
        "Help to Fund Anggi's Sickness Operation",
        "Anggi needs your tremendous help and support because the condition is getting worse every day.",
        98,
        "Rp8.000.000.000",
        "26 May 2021",
        () {},
      ),
      DonationInfo(
        "https://cutt.ly/3bCiGYx",
        "Religion",
        "Renovation of St. Mary Church (Manado)",
        "Built in 2005, this church needs a lot more room to accomodate the increasing numbers of visitors.",
        61,
        "Rp2.000.000.000",
        "31 May 2021",
        () {},
      ),
      DonationInfo(
        "https://cutt.ly/PbCiC0P",
        "Environmental Issues",
        "#TeamTrees by Mr. Beast - Bekasi Chapter",
        "Bekasi and almost all Indonesian cities need more trees and green public spaces to increase happiness.",
        89,
        "Rp3.000.000.000",
        "01 June 2021",
        () {},
      ),
    ];
    donationInfo.assignAll(donationList);
  }
}
