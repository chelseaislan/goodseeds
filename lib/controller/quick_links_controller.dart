import 'package:get/get.dart';
import 'package:goodseeds/model/quick_links_info.dart';

class QuickLinksController extends GetxController {
  var quickLinks = <QuickLinksInfo>[].obs;

  @override
  void onInit() {
    fetchQL();
    super.onInit();
  }

  void fetchQL() {
    var quickLinksList = [
      QuickLinksInfo("https://cutt.ly/nbX3JEb", () {}),
      QuickLinksInfo("https://cutt.ly/bbX3BSj", () {}),
      QuickLinksInfo("https://cutt.ly/6bX3NCA", () {}),
      QuickLinksInfo("https://cutt.ly/AbX31mK", () {}),
      QuickLinksInfo("https://cutt.ly/abX30Xb", () {}),
    ];
    quickLinks.assignAll(quickLinksList);
  }
}
