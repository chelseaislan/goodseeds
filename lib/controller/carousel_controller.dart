import 'package:get/get.dart';
import 'package:goodseeds/model/carousel_info.dart';

class SliderController extends GetxController {
  var sliderInfo = <CarouselInfo>[].obs;

  @override
  void onInit() {
    fetchSlider();
    super.onInit();
  }

  void fetchSlider() {
    var sliderResult = [
      CarouselInfo("01.jpeg"),
      CarouselInfo("02.jpeg"),
      CarouselInfo("03.jpg"),
    ];
    sliderInfo.assignAll(sliderResult);
  }
}
