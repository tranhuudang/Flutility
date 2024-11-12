import 'dart:math';

class LocalDirectory {
  // data
  static const String releaseNotes = 'assets/release_notes/release_notes.json';
  static const String rebookLogo256 = 'assets/images/app-icon.png';

  // illustrations
  static const List<String> illustrations = [
    'assets/illustrations/absurd.design - Chapter 1 - 01.png',
    'assets/illustrations/absurd.design - Chapter 1 - 02.png',
    'assets/illustrations/absurd.design - Chapter 1 - 033.png',
    'assets/illustrations/absurd.design - Chapter 1 - 04.png',
    'assets/illustrations/absurd.design - Chapter 1 - 05.png',
    'assets/illustrations/absurd.design - Chapter 1 - 06.png',
    'assets/illustrations/absurd.design - Chapter 1 - 07.png',
    'assets/illustrations/absurd.design - Chapter 1 - 08.png',
    'assets/illustrations/absurd.design - Chapter 1 - 09.png',
    'assets/illustrations/absurd.design - Chapter 1 - 10.png',
    'assets/illustrations/absurd.design - Chapter 1 - 11.png',
    'assets/illustrations/absurd.design - Chapter 1 - 31.png',
    'assets/illustrations/absurd.design - Chapter 1 - 32.png',
    'assets/illustrations/absurd.design - Chapter 1 - 33.png',
    'assets/illustrations/absurd.design - Chapter 1 - 34.png',
    'assets/illustrations/absurd.design - Chapter 1 - 35.png',
    'assets/illustrations/absurd.design - Chapter 1 - 36.png',
    'assets/illustrations/absurd.design - Chapter 1 - 37.png',
    'assets/illustrations/absurd.design - Chapter 1 - 38.png',
  ];
  static final String historyIllustration = getRandomIllustrationImage();
  static final String dictionaryIllustration = getRandomIllustrationImage();
  static final String storiesIllustration = getRandomIllustrationImage();
  static final String conversationIllustration = getRandomIllustrationImage();
  static final String textRecognizerIllustration = getRandomIllustrationImage();
  static const String iapIllustration = 'assets/illustrations/absurd.design - Chapter 1 - 32.png';
  static final String commonIllustration = getRandomIllustrationImage();
  static String getRandomIllustrationImage() {
    int randomIndex = Random().nextInt(illustrations.length);
    return illustrations[randomIndex];
  }
  //
  static const String essentialWordFileName =
      'assets/essential/3000_essential_words.json';
  static const String extendStoryFileName = 'extend_story.json';
  static const String rootFolderName = 'Rebook';
  static const String userDataFolderName = 'User Data';
  static const String resourcesDataFolderName = 'Resources';
}
