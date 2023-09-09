import 'package:dus_dashboard/index.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController instance = Get.find();

  // default language
  final _defaultLanguage = _languages[0].obs;
  final _drawerExpanded = false.obs;

  void updateExpanded(bool isExpanded) {
    _drawerExpanded.value = isExpanded;
    update();
  }

  void resetExpanded() {
    _drawerExpanded.value = false;
    update();
  }

  static final List<LanguageModel> _languages = <LanguageModel>[
    const LanguageModel(image: Assets.flagsUs, language: "English - US"),
    const LanguageModel(image: Assets.flagsGb, language: "English - GB"),
    const LanguageModel(image: Assets.flagsGh, language: "English - GH"),
  ];

  // reset language to default
  void resetLanguage() {
    _defaultLanguage.value = _languages[_languages.length - 1];
    update();
  }

  void changeLanguage(LanguageModel language) {
    _defaultLanguage.value = language;
    update();
  }

  List<LanguageModel> get kLanguages => _languages;
  LanguageModel get defaultLanguage => _defaultLanguage.value;
  bool get isDrawerExpanded => _drawerExpanded.value;
}
