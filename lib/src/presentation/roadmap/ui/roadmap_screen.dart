import 'package:dotted_border/dotted_border.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/map_dot.dart';
import 'components/map_group.dart';
import 'components/map_item.dart';
import 'components/map_label.dart';

class RoadmapScreen extends StatelessWidget {
  const RoadmapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.map_16_regular),
        title: Text("Flutter Learning Roadmap".i18n),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: Container(
                        width: 3,
                        height: 3000,
                        color: context.theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    190.height,
                    MapLabel(
                      label: 'Basics'.i18n,
                    ),
                    60.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    120.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    100.height,
                    const MapLabel(
                      label: 'Flutter',
                    ),
                    90.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    90.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    90.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    190.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    40.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    140.height,
                    MapLabel(
                      label: 'Getting Deeper'.i18n,
                    ),
                    50.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    50.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    150.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    50.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    120.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    50.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    140.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    60.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    120.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    30.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    130.height,
                    MapLabel(
                      label: 'Almost there'.i18n,
                    ),
                    80.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    120.height,
                    const MapDot(
                      branchRight: true,
                    ),
                    100.height,
                    const MapDot(
                      branchLeft: true,
                    ),
                    130.height,
                    MapLabel(
                      label: 'The End'.i18n,
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  children: [
                    SizedBox(
                      height: 180,
                      width: 260,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2, child: Text('introductionRoadmap'.i18n)),
                          8.width,
                          Expanded(
                            child: DottedBorder(
                              dashPattern: const [4, 4],
                              borderType: BorderType.RRect,
                              strokeWidth: 1,
                              radius: const Radius.circular(5),
                              color: context.theme.dividerColor,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: context
                                              .theme.colorScheme.secondary),
                                    ),
                                    title: Text(
                                      'Must have'.i18n,
                                      style: context.theme.textTheme.labelSmall,
                                    ),
                                    onTap: () {
                                      showInfoBottomSheet(
                                        context,
                                        'Must Have'.i18n,
                                        0,
                                        'These are fundamental concepts every Flutter developer should know.',
                                        {
                                          'Flutter Documentation':
                                              'https://flutter.dev/docs',
                                          'Official Dart Language Guide':
                                              'https://dart.dev/guides',
                                        },
                                      );
                                    },
                                  ),
                                  ListTile(
                                    leading: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: context.theme.colorScheme
                                              .secondaryContainer),
                                    ),
                                    title: Text(
                                      'Nice to have'.i18n,
                                      style: context.theme.textTheme.labelSmall,
                                    ),
                                    onTap: () {
                                      showInfoBottomSheet(
                                        context,
                                        'Nice to Have'.i18n,
                                        1,
                                        'These concepts are beneficial to know, but not required at the beginning.',
                                        {
                                          'Effective Dart':
                                              'https://dart.dev/guides/language/effective-dart',
                                          'Flutter Community Best Practices':
                                              'https://flutter.dev/community',
                                        },
                                      );
                                    },
                                  ),
                                  ListTile(
                                    leading: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: context.theme.colorScheme
                                              .tertiaryContainer),
                                    ),
                                    title: Text(
                                      'Optional'.i18n,
                                      style: context.theme.textTheme.labelSmall,
                                    ),
                                    onTap: () {
                                      showInfoBottomSheet(
                                        context,
                                        'Optional'.i18n,
                                        2,
                                        'These are optional topics that may be useful in certain cases.',
                                        {
                                          'Flutter Packages':
                                              'https://pub.dev/flutter',
                                          'Advanced Dart Language Features':
                                              'https://dart.dev/guides/language',
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    80.height,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 120),
                          child: MapGroup(
                            title: 'Language',
                            gridChildren: [
                              MapItem(
                                label: 'Dart',
                                onTap: () {
                                  showInfoBottomSheet(
                                    context,
                                    'Dart',
                                    0,
                                    'Dart is the language used in Flutter development. Mastering Dart will make your Flutter journey easier.',
                                    {
                                      'Dart Documentation':
                                          'https://dart.dev/guides',
                                      'Effective Dart Book':
                                          'https://dart.dev/guides/language/effective-dart',
                                      'A guide on how to fix common problems in Dart code.':
                                          'https://dart.dev/guides/language/sound-problems',
                                      'A list of all available Dart linter rules.':
                                          'https://dart.dev/tools/linter-rules',
                                      'DCM - a tool to help you manage code quality and consistency':
                                          'https://dcm.dev/',
                                    },
                                  );
                                },
                              ),
                              MapItem(
                                label: 'Code Style',
                                importantLevel: 2,
                                onTap: () {
                                  showInfoBottomSheet(
                                    context,
                                    'Code Style',
                                    2,
                                    'Following a consistent code style helps maintain readability and uniformity in your projects.',
                                    {
                                      'Dart Style Guide':
                                          'https://dart.dev/guides/language/effective-dart/style',
                                    },
                                  );
                                },
                              ),
                              MapItem(
                                label: 'OOP',
                                importantLevel: 1,
                                onTap: () {
                                  showInfoBottomSheet(
                                    context,
                                    'Object-Oriented Programming (OOP)',
                                    1,
                                    'OOP is a programming paradigm that uses objects and classes to structure code efficiently.',
                                    {
                                      'Classes & Objects':
                                          'https://dart.dev/guides/language/language-tour#classes',
                                      'OOPS in Dart':
                                          'https://dart.dev/guides/language/language-tour#classes',
                                      'Object-Oriented Programming Concepts':
                                          'https://www.w3schools.com/java/java_oop.asp',
                                    },
                                  );
                                },
                              ),
                              MapItem(
                                label: 'Functional',
                                importantLevel: 1,
                                onTap: () {
                                  showInfoBottomSheet(
                                    context,
                                    'Functional Programming',
                                    1,
                                    'Functional programming is a programming paradigm where computation is treated as the evaluation of mathematical functions, avoiding state and mutable data.',
                                    {
                                      'Functional Programming in Dart':
                                          'https://dart.dev/guides/language/language-tour#functions',
                                      'Learn Functional Programming Concepts':
                                          'https://daily.dev/blog/functional-programming-for-beginners',
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        MapGroup(
                          title: 'Dev Environment',
                          columnChildren: [
                            MapItem(
                              width: double.infinity,
                              label: 'Android Studio or Visual Studio Code',
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'Android Studio or Visual Studio Code',
                                  2,
                                  'These are the most popular IDEs for Flutter development. Android Studio is a full-featured IDE, while Visual Studio Code is lightweight and customizable.',
                                  {
                                    'Install Android Studio':
                                        'https://developer.android.com/studio',
                                    'Install Visual Studio Code':
                                        'https://code.visualstudio.com/',
                                  },
                                );
                              },
                            ),
                          ],
                          gridChildren: [
                            MapItem(
                              label: 'Flutter CLI',
                              importantLevel: 2,
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'Flutter CLI',
                                  2,
                                  'The Flutter CLI is a powerful command-line tool to create, build, and manage Flutter projects.',
                                  {
                                    'Flutter CLI Documentation':
                                        'https://flutter.dev/docs/reference/flutter-cli',
                                    'The Dart command-line tool':
                                        'https://dart.dev/tools/dart-tool',
                                  },
                                );
                              },
                            ),
                            MapItem(
                              label: 'DartPad',
                              importantLevel: 2,
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'DartPad',
                                  2,
                                  'DartPad is an online tool to try out Dart code and Flutter widgets without setting up an IDE.',
                                  {
                                    'DartPad documentation':
                                        'https://dart.dev/tools/dartpad',
                                    'Try DartPad': 'https://dartpad.dev/',
                                  },
                                );
                              },
                            ),
                            MapItem(
                              icon: const Icon(FontAwesomeIcons.gitAlt),
                              label: 'Git',
                              importantLevel: 1,
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'Git',
                                  1,
                                  'Git is a version control system that helps manage your source code and track changes.',
                                  {
                                    'Git Documentation':
                                        'https://git-scm.com/doc',
                                    'Interactive Git learning online - Learn git commands in an interactive way.':
                                        'https://learngitbranching.js.org/',
                                    'Learn Git in a Month of Lunches':
                                        'https://www.gitbook.com/book/git-guides/learn-git-in-a-month-of-lunches/details',
                                  },
                                );
                              },
                            ),
                            MapItem(
                              label: 'Zapp!',
                              importantLevel: 2,
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'Zapp!',
                                  2,
                                  'Zapp! is a mobile app testing platform that helps with running automated Flutter UI tests on real devices.',
                                  {
                                    'Zapp! Documentation':
                                        'https://www.zapp.io/',
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    106.height,
                    Row(
                      children: [
                        Column(
                          children: [
                            MapGroup(
                              title: 'Code Design Patterns',
                              gridChildren: [
                                MapItem(
                                  label: 'Observer',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Observer Pattern',
                                      2,
                                      'The Observer pattern allows an object (subject) to notify a list of observers about changes, typically used for event handling or communication.',
                                      {
                                        'Observer Design Pattern Overview':
                                            'https://refactoring.guru/design-patterns/observer',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Command',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Command Pattern',
                                      2,
                                      'The Command pattern encapsulates a request as an object, allowing for parameterization of clients with queues, requests, and operations.',
                                      {
                                        'Command Pattern in Dart':
                                            'https://flutterdesignpatterns.com/pattern/command',
                                        'Command Pattern Explanation':
                                            'https://refactoring.guru/design-patterns/command',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Factory',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Factory Pattern',
                                      2,
                                      'The Factory pattern provides a method for creating objects in a super class, but allows subclasses to alter the type of created objects.',
                                      {
                                        'Factory Pattern in Dart':
                                            'https://flutterdesignpatterns.com/pattern/factory-method',
                                        'Factory Design Pattern Overview':
                                            'https://refactoring.guru/design-patterns/factory-method',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Dependency Injection',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Dependency Injection',
                                      1,
                                      'Dependency Injection is a design pattern where an object receives its dependencies from external sources rather than creating them itself.',
                                      {
                                        'Dependency Injection in Flutter':
                                            'https://pub.dev/packages/get_it',
                                        'Dependency Injection Pattern Overview':
                                            'https://refactoring.guru/design-patterns/dependency-injection',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Builder',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Builder Pattern',
                                      2,
                                      'The Builder pattern is used to construct a complex object step by step, separating the construction of the object from its representation.',
                                      {
                                        'Builder Pattern in Dart':
                                            'https://flutterdesignpatterns.com/pattern/builder',
                                        'Builder Design Pattern Overview':
                                            'https://refactoring.guru/design-patterns/builder',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'State',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'State Pattern',
                                      2,
                                      'The State pattern allows an object to alter its behavior when its internal state changes, acting like an object with many behaviors.',
                                      {
                                        'State Pattern in Flutter':
                                            'https://flutter.dev/docs/development/state-management',
                                        'State Design Pattern Overview':
                                            'https://refactoring.guru/design-patterns/state',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Decorator',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Decorator Pattern',
                                      2,
                                      'The Decorator pattern allows behavior to be added to an individual object dynamically without affecting the behavior of other objects from the same class.',
                                      {
                                        'Decorator Pattern in Dart':
                                            'https://flutterdesignpatterns.com/pattern/decorator',
                                        'Decorator Design Pattern Overview':
                                            'https://refactoring.guru/design-patterns/decorator',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Composite',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Composite Pattern',
                                      2,
                                      'The Composite pattern allows you to compose objects into tree-like structures to represent part-whole hierarchies.',
                                      {
                                        'Composite Design Pattern in Dart':
                                            'https://flutterdesignpatterns.com/pattern/composite',
                                        'Composite Design Pattern Overview':
                                            'https://refactoring.guru/design-patterns/composite',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            90.height,
                            MapGroup(
                              title: 'Networking',
                              gridChildren: [
                                MapItem(
                                  label: 'RESTful API',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'RESTful API',
                                      2,
                                      'A RESTful API allows communication between client and server through HTTP requests, often returning JSON data.',
                                      {
                                        'Understanding REST':
                                            'https://restfulapi.net/',
                                        'Dart HTTP package':
                                            'https://pub.dev/packages/http',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'TCP/IP Sockets',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'TCP/IP Sockets',
                                      2,
                                      'TCP/IP sockets allow for two-way communication between client and server over a network. It works at a lower level compared to HTTP.',
                                      {
                                        'Dart Socket Programming':
                                            'https://dart.dev/guides/libraries/async',
                                        'TCP/IP Overview':
                                            'https://www.geeksforgeeks.org/tcp-ip-model/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'JSON',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'JSON',
                                      1,
                                      'JSON (JavaScript Object Notation) is a lightweight data interchange format that is easy to read and write, commonly used for transmitting data in RESTful APIs.',
                                      {
                                        'JSON Documentation':
                                            'https://www.json.org/json-en.html',
                                        'Dart JSON Encoding and Decoding':
                                            'https://dart.dev/guides/libraries/library-tour#encoding-and-decoding-json',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'GraphQL',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'GraphQL',
                                      2,
                                      'GraphQL is a query language for APIs and a runtime for executing those queries, offering more flexible and efficient data fetching compared to REST.',
                                      {
                                        'Learn GraphQL':
                                            'https://graphql.org/learn/',
                                        'GraphQL Client in Dart':
                                            'https://pub.dev/packages/graphql_flutter',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            MapGroup(
                              title: 'Basic Widgets',
                              gridChildren: [
                                MapItem(
                                  label: 'Material Widgets',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Material Widgets',
                                      2,
                                      'Material Widgets follow the Material Design guidelines and are widely used for building Flutter applications with a consistent look and feel.',
                                      {
                                        'Material Design Overview':
                                            'https://material.io/design',
                                        'Material Widgets in Flutter':
                                            'https://flutter.dev/docs/development/ui/widgets/material',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Material Design',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Material Design',
                                      2,
                                      'Material Design is a design language developed by Google to create visually appealing and consistent user interfaces across platforms.',
                                      {
                                        'Material Design Guidelines':
                                            'https://material.io/design',
                                        'Material Components for Flutter':
                                            'https://flutter.dev/docs/development/ui/widgets/material',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Cupertino Design',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Cupertino Design',
                                      1,
                                      'Cupertino Design is Apple\'s design language, implemented in Flutter as Cupertino widgets for creating iOS-style user interfaces.',
                                      {
                                        'Cupertino Widgets in Flutter':
                                            'https://flutter.dev/docs/development/ui/widgets/cupertino',
                                        'Apple Human Interface Guidelines':
                                            'https://developer.apple.com/design/human-interface-guidelines/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Mobile HIG',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Mobile HIG (Human Interface Guidelines)',
                                      2,
                                      'Mobile HIG is a set of guidelines provided by Apple and Google for creating user-friendly and consistent mobile apps.',
                                      {
                                        'Apple Human Interface Guidelines':
                                            'https://developer.apple.com/design/human-interface-guidelines/',
                                        'Material Design Guidelines':
                                            'https://material.io/design',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            40.height,
                            MapGroup(
                              title: 'Core Design Principles',
                              gridChildren: [
                                MapItem(
                                  label: 'KISS',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'KISS (Keep It Simple, Stupid)',
                                      2,
                                      'KISS is a design principle that emphasizes simplicity. The idea is to keep things simple and avoid unnecessary complexity in your code.',
                                      {
                                        'KISS Principle Overview':
                                            'https://en.wikipedia.org/wiki/KISS_principle',
                                        'Keep It Simple, Stupid in Software Design':
                                            'https://www.guru99.com/software-design-principles.html',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'DRY',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'DRY (Don\'t Repeat Yourself)',
                                      2,
                                      'The DRY principle advocates for reducing repetition of code. Instead of duplicating code, refactor it into reusable components or functions.',
                                      {
                                        'DRY Principle Overview':
                                            'https://en.wikipedia.org/wiki/Don%27t_repeat_yourself',
                                        'DRY Principle in Software Development':
                                            'https://www.smashingmagazine.com/2017/07/avoid-dont-repeat-yourself/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'SOLID',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'SOLID Principles',
                                      1,
                                      'SOLID is an acronym for five design principles that help software developers create more understandable, flexible, and maintainable code.',
                                      {
                                        'SOLID Principles Overview':
                                            'https://en.wikipedia.org/wiki/SOLID',
                                        'SOLID Principles in Object-Oriented Design':
                                            'https://stackify.com/solid-design-principles/',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            120.height,
                            MapGroup(
                              title: 'Simple Persistence',
                              gridChildren: [
                                MapItem(
                                  label: 'Serializers',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Serializers',
                                      2,
                                      'Serializers are used to convert complex data types (like objects) into a format that can be easily saved (like JSON or XML) and later deserialized back into the original object.',
                                      {
                                        'JSON Serialization in Flutter':
                                            'https://flutter.dev/docs/development/data-and-backend/json',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Local storage',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Local storage',
                                      2,
                                      'Local storage refers to saving data on a device (such as preferences, settings, or small data) that can persist across app sessions.',
                                      {
                                        'Shared Preferences in Flutter':
                                            'https://pub.dev/packages/shared_preferences',
                                        'Flutter Local Storage':
                                            'https://flutter.dev/docs/cookbook/persistence/key-value',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Keychain',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Keychain',
                                      2,
                                      'Keychain is a secure storage system used on iOS and macOS to store sensitive data like passwords, tokens, and other credentials.',
                                      {
                                        'Using Keychain in Flutter':
                                            'https://pub.dev/packages/flutter_secure_storage',
                                        'Apple Keychain Documentation':
                                            'https://developer.apple.com/documentation/security/keychain_services',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Keystore',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Keystore',
                                      2,
                                      'Keystore is a secure storage solution used on Android devices to store sensitive data such as passwords and cryptographic keys.',
                                      {
                                        'Using Keystore in Flutter':
                                            'https://pub.dev/packages/flutter_secure_storage',
                                        'Android Keystore System':
                                            'https://developer.android.com/training/articles/keystore',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    130.height,
                    // Getting Deeper
                    Row(
                      children: [
                        Column(
                          children: [
                            MapGroup(
                              title: 'Database',
                              gridChildren: [
                                MapItem(
                                  label: 'Isar',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Isar Database',
                                      2,
                                      'Isar is a fast and easy-to-use database for Flutter that supports both Flutter desktop and mobile platforms. It is designed to work with large amounts of data and complex queries.',
                                      {
                                        'Isar Documentation':
                                            'https://isar.dev/',
                                        'Isar Flutter Package':
                                            'https://pub.dev/packages/isar',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  icon: const Icon(
                                      FluentIcons.database_16_regular),
                                  label: 'SQLite',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'SQLite',
                                      2,
                                      'SQLite is a lightweight, serverless SQL database that can be used to store structured data locally in mobile apps.',
                                      {
                                        'SQLite Documentation':
                                            'https://www.sqlite.org/docs.html',
                                        'SQLite in Flutter':
                                            'https://pub.dev/packages/sqflite',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Firebase',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Firebase',
                                      1,
                                      'Firebase is a comprehensive platform that provides a variety of backend services including real-time databases, authentication, and more, making it easy to integrate cloud storage into your app.',
                                      {
                                        'Firebase Documentation':
                                            'https://firebase.google.com/docs',
                                        'Firebase in Flutter':
                                            'https://firebase.flutter.dev/docs/overview',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'iCloud',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'iCloud',
                                      2,
                                      'iCloud is Apple’s cloud storage solution, allowing users to store data and sync it across multiple devices. It can be used for storing app data, photos, and more.',
                                      {
                                        'iCloud Documentation':
                                            'https://developer.apple.com/icloud/',
                                        'iCloud Storage for Flutter':
                                            'https://pub.dev/packages/flutter_icloud',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            20.height,
                            MapGroup(
                              title: 'Testing',
                              gridChildren: [
                                MapItem(
                                  label: 'TDD',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'TDD (Test-Driven Development)',
                                      2,
                                      'TDD is a software development approach where tests are written before the code itself. The goal is to ensure that your code works as expected from the very start.',
                                      {
                                        'TDD Overview':
                                            'https://en.wikipedia.org/wiki/Test-driven_development',
                                        'Test-Driven Development in Flutter':
                                            'https://flutter.dev/docs/cookbook/testing/unit/introduction',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'BDD',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'BDD (Behavior-Driven Development)',
                                      1,
                                      'BDD focuses on the behavioral specification of software. It encourages collaboration between developers, testers, and non-technical stakeholders to define the behavior of the system.',
                                      {
                                        'BDD Overview':
                                            'https://en.wikipedia.org/wiki/Behavior-driven_development',
                                        'BDD with Flutter':
                                            'https://pub.dev/packages/flutter_gherkin',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            90.height,
                            MapGroup(
                              title: 'Advanced Dart',
                              gridChildren: [
                                MapItem(
                                  label: 'Concurrent',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Concurrent Programming in Dart',
                                      2,
                                      'Concurrent programming is a technique where multiple tasks are executed in overlapping periods. Dart provides `async` and `await` for handling concurrency and asynchronous operations.',
                                      {
                                        'Concurrent Programming in Dart':
                                            'https://dart.dev/guides/language/language-tour#asynchrony-support',
                                        'Dart Asynchronous Programming':
                                            'https://dart.dev/tutorials/language/async-await',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Reactive',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Reactive Programming in Dart',
                                      2,
                                      'Reactive programming is a paradigm where data flows reactively, meaning you can use streams to handle asynchronous events and updates automatically.',
                                      {
                                        'Reactive Programming in Dart':
                                            'https://dart.dev/guides/libraries/async',
                                        'ReactiveX for Dart':
                                            'https://pub.dev/packages/rxdart',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Functional',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Functional Programming in Dart',
                                      1,
                                      'Functional programming emphasizes the use of functions, immutability, and declarative programming to write clean, concise, and maintainable code.',
                                      {
                                        'Functional Programming in Dart':
                                            'https://dart.dev/guides/language/language-tour#functions',
                                        'Functional Programming in Dart - Tutorials':
                                            'https://medium.flutterdevs.com/functional-programming-in-flutter-c7aee7ae3d44',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            60.height,
                            MapGroup(
                              title: 'Profiling',
                              gridChildren: [
                                MapItem(
                                  label: 'Leaks',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Memory Leaks',
                                      2,
                                      'Memory leaks occur when memory that is no longer needed is not released, leading to performance degradation and increased memory usage. Identifying and fixing memory leaks is crucial for maintaining the performance of your app.',
                                      {
                                        'Detecting Memory Leaks in Flutter':
                                            'https://flutter.dev/docs/testing/debugging#memory-leaks',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Allocations',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Memory Allocations',
                                      1,
                                      'Memory allocations refer to the process of allocating memory space for objects or data structures. Efficient memory allocation and deallocation are crucial to avoid memory bloat and ensure smooth app performance.',
                                      {
                                        'Profiling Memory Allocations':
                                            'https://flutter.dev/docs/testing/debugging#profiling-memory-usage',
                                        'Flutter DevTools Memory View':
                                            'https://flutter.dev/docs/development/tools/devtools/memory',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Performance',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'App Performance Profiling',
                                      1,
                                      'Profiling app performance involves measuring key metrics such as frame rates, CPU usage, and responsiveness to identify performance bottlenecks and optimize your app’s performance.',
                                      {
                                        'Flutter Performance Profiling':
                                            'https://docs.flutter.dev/perf',
                                        'DevTools Performance View':
                                            'https://flutter.dev/docs/development/tools/devtools/performance',
                                        'Optimizing your Flutter App':
                                            'https://www.youtube.com/watch?v=vVg9It7cOfY',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Widgets',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Widget Profiling',
                                      1,
                                      'Widget profiling helps identify inefficient widget builds and rendering. It can be used to optimize rendering times, avoid unnecessary rebuilds, and improve overall UI performance.',
                                      {
                                        'Optimizing Widgets in Flutter':
                                            'https://flutter.dev/docs/perf/rendering',
                                        'DevTools Widget Inspector':
                                            'https://flutter.dev/docs/development/tools/devtools/inspector',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            60.height,
                            MapGroup(
                              title: 'Security',
                              gridChildren: [
                                MapItem(
                                  label: 'OWASP',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'OWASP (Open Web Application Security Project)',
                                      2,
                                      'OWASP is a nonprofit organization that works to improve the security of software. Their top 10 list highlights the most critical security risks in web and mobile applications.',
                                      {
                                        'OWASP Top 10':
                                            'https://owasp.org/www-project-top-ten/',
                                        'OWASP Foundation':
                                            'https://owasp.org/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'freeRASP',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'freeRASP (Real-time Application Security Protection)',
                                      1,
                                      'freeRASP is a lightweight, open-source mobile application protection framework that helps secure your Flutter applications in real-time.',
                                      {},
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            MapGroup(
                              title: 'Architecture Patterns',
                              gridChildren: [
                                MapItem(
                                  label: 'Uni-directional data flow',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Uni-directional Data Flow',
                                      2,
                                      'Uni-directional data flow is a design pattern where data flows in a single direction through the application. It simplifies debugging, state management, and helps in maintaining a clear data flow.',
                                      {
                                        'Uni-directional Data Flow in Flutter':
                                            'https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple',
                                        'State Management in Flutter':
                                            'https://flutter.dev/docs/development/data-and-backend/state-mgmt',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'MVVM',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'MVVM (Model-View-ViewModel)',
                                      1,
                                      'MVVM is a design pattern that separates the business logic (Model) from the UI (View), with a ViewModel acting as an intermediary to manage and bind data between the two.',
                                      {
                                        'MVVM Architecture in Flutter':
                                            'https://medium.flutterdevs.com/flutter-and-mvvm-pattern-462a3b7b36e0',
                                        'MVVM Guide':
                                            'https://docs.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure/common-web-app-architecture-patterns#mvvm',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'MVC',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'MVC (Model-View-Controller)',
                                      1,
                                      'MVC is a design pattern where the Model represents the data, the View displays the UI, and the Controller handles user inputs and updates the Model and View.',
                                      {
                                        'MVC Architecture in Flutter':
                                            'https://medium.flutterdevs.com/flutter-mvc-pattern-dc6d77c4d202',
                                        'MVC Guide':
                                            'https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Lifting State',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Lifting State',
                                      2,
                                      'Lifting state refers to the process of moving the state of a widget to a higher level in the widget tree so that it can be shared between child widgets.',
                                      {
                                        'Lifting State in Flutter':
                                            'https://flutter.dev/docs/development/ui/advanced/lifting-state-up',
                                        'State Management Overview':
                                            'https://flutter.dev/docs/development/data-and-backend/state-mgmt',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            100.height,
                            MapGroup(
                              title: 'Languages',
                              gridChildren: [
                                MapItem(
                                  icon: const Icon(FontAwesomeIcons.swift),
                                  label: 'Swift',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Swift',
                                      2,
                                      'Swift is a powerful and intuitive programming language developed by Apple. It is used for building iOS, macOS, watchOS, and tvOS applications. Swift is known for its speed, safety, and ease of use.',
                                      {
                                        'Swift Official Documentation':
                                            'https://developer.apple.com/swift/',
                                        'Learn Swift':
                                            'https://www.swift.org/learning/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Kotlin',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Kotlin',
                                      2,
                                      'Kotlin is a statically typed programming language for modern multiplatform applications. It is officially supported for Android development and is designed to be fully interoperable with Java.',
                                      {
                                        'Kotlin Official Documentation':
                                            'https://kotlinlang.org/docs/home.html',
                                        'Kotlin for Android':
                                            'https://developer.android.com/kotlin',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'FFIgen',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'FFIgen',
                                      2,
                                      'FFIgen is a tool that simplifies the process of generating bindings for foreign function interfaces (FFI), enabling your Dart/Flutter code to interact with C libraries and other native code.',
                                      {
                                        'FFIgen GitHub Repository':
                                            'https://github.com/dart-lang/ffi',
                                        'FFI in Dart':
                                            'https://dart.dev/guides/libraries/c-interop',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'JNIgen',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'JNIgen',
                                      2,
                                      'JNIgen is a tool for generating Java Native Interface (JNI) bindings. It allows Flutter to call Java code from Dart using JNI, making it easier to work with Android-specific APIs.',
                                      {
                                        'JNIgen GitHub Repository':
                                            'https://github.com/google/jni-gen',
                                        'JNI Documentation':
                                            'https://docs.oracle.com/javase/7/docs/technotes/guides/jni/',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            60.height,
                            MapGroup(
                              title: 'Package Manager',
                              gridChildren: [
                                MapItem(
                                  label: 'Pub',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Pub',
                                      2,
                                      'Pub is the default package manager for Flutter and Dart. It is used to manage dependencies, including Flutter packages and plugins, and enables the installation and upgrading of packages.',
                                      {
                                        'Pub Official Documentation':
                                            'https://dart.dev/tools/pub',
                                        'Using Packages in Flutter':
                                            'https://flutter.dev/docs/development/packages-and-plugins/using-packages',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Popular Plugins',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Popular Plugins',
                                      1,
                                      'Popular plugins are third-party packages that enhance Flutter functionality. These can be used for various purposes, such as accessing native device features or adding complex UI components.',
                                      {
                                        'Flutter Popular Plugins':
                                            'https://pub.dev/flutter/packages',
                                        'Flutter Plugin Documentation':
                                            'https://flutter.dev/docs/development/packages-and-plugins/using-packages',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Gradle',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Gradle',
                                      2,
                                      'Gradle is a build automation tool that is used for building Android applications. It is widely used in the Android ecosystem to handle tasks such as compiling and packaging the application.',
                                      {
                                        'Gradle Documentation':
                                            'https://docs.gradle.org/',
                                        'Using Gradle in Android Studio':
                                            'https://developer.android.com/studio/build',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'CocoaPods',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'CocoaPods',
                                      2,
                                      'CocoaPods is a dependency manager for Swift and Objective-C projects. It is widely used for managing iOS dependencies in Flutter projects, helping to integrate native iOS libraries.',
                                      {
                                        'CocoaPods Official Documentation':
                                            'https://guides.cocoapods.org/',
                                        'Using CocoaPods with Flutter':
                                            'https://flutter.dev/docs/development/ios-plugins#installing-pod-dependencies',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            60.height,
                            MapGroup(
                              title: 'Flutter Internals',
                              gridChildren: [
                                MapItem(
                                  label: 'Framework Architecture',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Framework Architecture',
                                      1,
                                      'Flutter uses a layered architecture where the framework is built on top of the engine. The framework includes widgets, rendering, and other tools for building UIs, while the engine interacts with the OS to perform rendering and other tasks.',
                                      {
                                        'Flutter Architecture Overview':
                                            'https://flutter.dev/docs/resources/architectural-overview',
                                        'Flutter Source Code on GitHub':
                                            'https://github.com/flutter/flutter',
                                        'Flutter\'s Rendering Pipeline':
                                            'https://www.youtube.com/watch?v=UUfXWzp0-DU',
                                        'The Mahogany Staircase - Flutter\'s Layered Design':
                                            'https://www.youtube.com/watch?v=dkyY9WCGMi0',
                                        'Flutter Top to Bottom':
                                            'http://www.cs.cmu.edu/~bam/uicourse/830spring20/05-830-2020-03-23-Lecture-10-Flutter.mp4',
                                        'Flutter Under the Hood':
                                            'https://surf.dev/flutter-under-the-hood/',
                                        'Flutter Application Architecture: Comprehensive Guide':
                                            'https://surf.dev/flutter-architecture-guide/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Dart VM',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Dart VM',
                                      2,
                                      'The Dart VM (Virtual Machine) is responsible for executing Dart code in Flutter. It handles tasks such as just-in-time (JIT) compilation and garbage collection to ensure the efficient execution of Flutter apps.',
                                      {
                                        'Introduction to Dart VM':
                                            'https://mrale.ph/dartvm/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'RenderObjects',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'RenderObjects',
                                      2,
                                      'RenderObjects are the core components responsible for rendering UI elements in Flutter. They manage layout, painting, and interaction handling for widgets in the app.',
                                      {},
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Layouts',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Layouts',
                                      2,
                                      'In Flutter, layouts define how widgets are arranged on the screen. The layout system is based on constraints, and Flutter uses a widget-tree-based system to determine the position and size of UI elements.',
                                      {
                                        'Flutter Layouts Documentation':
                                            'https://flutter.dev/docs/development/ui/layout',
                                        'Understanding Flutter Layouts':
                                            'https://flutter.dev/docs/development/ui/widgets-intro#layouts',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            60.height,
                            MapGroup(
                              title: 'Beyond Mobile',
                              gridChildren: [
                                MapItem(
                                  label: 'Desktop & Web',
                                  importantLevel: 1,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Desktop & Web',
                                      1,
                                      'Flutter is not just for mobile apps. It also supports building apps for desktop platforms (macOS, Windows, Linux) and web browsers, allowing you to use a single codebase to target multiple platforms.',
                                      {
                                        'Flutter Desktop Overview':
                                            'https://flutter.dev/desktop',
                                        'Flutter Web Overview':
                                            'https://flutter.dev/web',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Server',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Server',
                                      2,
                                      'Flutter can also be used to build server-side applications. With the help of the Dart language, developers can create web servers and APIs, making Flutter and Dart a full-stack solution.',
                                      {},
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    160.height,
                    Row(
                      children: [
                        Column(
                          children: [
                            MapGroup(
                              title: 'Continuous Integration',
                              gridChildren: [
                                MapItem(
                                  label: 'CI server',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'CI server',
                                      1,
                                      'Continuous Integration (CI) servers help automate the process of building, testing, and deploying code. Tools like Jenkins, GitHub Actions, and CircleCI are commonly used to automate workflows and ensure the quality of code through automated tests.',
                                      {
                                        'Jenkins Official Site':
                                            'https://www.jenkins.io/',
                                        'GitHub Actions Documentation':
                                            'https://docs.github.com/en/actions',
                                        'CircleCI Documentation':
                                            'https://circleci.com/docs/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'FastLane',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'FastLane',
                                      1,
                                      'Fastlane is an open-source automation tool used for building and releasing mobile applications. It automates tasks like screenshots, beta deployment, and app store release, which helps streamline the CI/CD process.',
                                      {
                                        'FastLane Official Site':
                                            'https://fastlane.tools/',
                                        'FastLane GitHub Repository':
                                            'https://github.com/fastlane/fastlane',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Test Builds Distribution',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Test Builds Distribution',
                                      1,
                                      'Test build distribution involves sharing your app with testers or stakeholders before it is released publicly. Services like Firebase App Distribution and TestFlight provide a platform for distributing pre-release versions of your app to a group of testers.',
                                      {
                                        'Firebase App Distribution':
                                            'https://firebase.google.com/products/app-distribution',
                                        'TestFlight Official Site':
                                            'https://developer.apple.com/testflight/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Code metrics',
                                  importantLevel: 2,
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Code metrics',
                                      2,
                                      'Code metrics are a set of quantitative measures used to assess the quality, maintainability, and performance of code. Tools like SonarQube and Codecov provide insights into code quality, coverage, and potential improvements.',
                                      {
                                        'SonarQube Official Site':
                                            'https://www.sonarqube.org/',
                                        'Codecov Official Site':
                                            'https://codecov.io/',
                                        'Dart Code Metrics':
                                            'https://pub.dev/packages/dart_code_metrics',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            90.height,
                            MapGroup(
                              title: 'Store',
                              gridChildren: [
                                MapItem(
                                  label: 'AppStore Guidelines',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'AppStore Guidelines',
                                      1,
                                      'The App Store Guidelines provide the necessary rules and criteria for submitting apps to the Apple App Store. These guidelines ensure that apps meet Apple’s requirements for quality, security, and privacy.',
                                      {
                                        'App Store Guidelines':
                                            'https://developer.apple.com/app-store/review/guidelines/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Google Play Guidelines',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Google Play Guidelines',
                                      1,
                                      'Google Play Guidelines outline the policies and practices developers must follow when submitting apps to the Google Play Store. These guidelines ensure that apps meet quality standards and comply with legal and security requirements.',
                                      {
                                        'Google Play Developer Policy':
                                            'https://play.google.com/about/developer-content-policy/',
                                        'Google Play Console Help':
                                            'https://support.google.com/googleplay/android-developer/',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'App Store Connect',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'App Store Connect',
                                      1,
                                      'App Store Connect is a platform provided by Apple for managing app submissions to the App Store. It allows you to upload builds, set pricing, manage app metadata, and track app performance.',
                                      {
                                        'App Store Connect Documentation':
                                            'https://developer.apple.com/app-store-connect/',
                                        'Getting Started with App Store Connect':
                                            'https://developer.apple.com/library/archive/documentation/IDEs/Conceptual/AppStoreConnect_Guide/introduction/Introduction.html',
                                      },
                                    );
                                  },
                                ),
                                MapItem(
                                  label: 'Google Dev Console',
                                  onTap: () {
                                    showInfoBottomSheet(
                                      context,
                                      'Google Dev Console',
                                      1,
                                      'Google Developer Console is the platform used to manage Android app submissions to the Google Play Store. It allows you to configure app details, upload APKs, manage store listings, and review app performance analytics.',
                                      {
                                        'Google Play Console Help':
                                            'https://support.google.com/googleplay/android-developer/',
                                        'Google Play Console Documentation':
                                            'https://developer.android.com/studio/publish',
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        MapGroup(
                          title: 'Analytics',
                          gridChildren: [
                            MapItem(
                              label: 'User Behavior Analytics',
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'User Behavior Analytics',
                                  1,
                                  'User Behavior Analytics help track and understand how users interact with your app. By monitoring user actions such as clicks, navigation, and screen views, you can improve user experience and make data-driven decisions.',
                                  {
                                    'Google Analytics for Firebase':
                                        'https://firebase.google.com/products/analytics',
                                    'Microsoft App Center Analytics':
                                        'https://docs.microsoft.com/en-us/appcenter/analytics/',
                                    'Datadog Real User Monitoring (RUM)':
                                        'https://pub.dev/packages/datadog_flutter_plugin',
                                    'Smartlook SDK ':
                                        'https://mobile.developer.smartlook.com/reference/flutter-sdk-installation',
                                    'Mixpanel SDKs: Flutter':
                                        'https://docs.mixpanel.com/docs/tracking-methods/sdks/flutter',
                                    'Mixpanel': 'https://mixpanel.com/',
                                    'Amplitude': 'https://amplitude.com/',
                                  },
                                );
                              },
                            ),
                            MapItem(
                              label: 'Crash Logging',
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'Crash Logging',
                                  1,
                                  'Crash Logging tools capture errors and crashes in your app, allowing you to diagnose and fix issues that affect users. Services like Firebase Crashlytics and Sentry provide detailed crash reports and analytics.',
                                  {
                                    'Firebase Crashlytics':
                                        'https://firebase.google.com/products/crashlytics',
                                    'Sentry': 'https://sentry.io/',
                                    'Bugsnag': 'https://www.bugsnag.com/',
                                  },
                                );
                              },
                            ),
                            MapItem(
                              label: 'A/B Testing',
                              importantLevel: 2,
                              onTap: () {
                                showInfoBottomSheet(
                                  context,
                                  'A/B Testing',
                                  2,
                                  'A/B Testing involves comparing two versions of an app to determine which one performs better based on specific metrics. By conducting A/B tests, you can optimize app features, layouts, and functionalities to improve user experience.',
                                  {
                                    'Firebase A/B Testing':
                                        'https://firebase.google.com/products/ab-testing',
                                    'Optimizely': 'https://www.optimizely.com/',
                                    'VWO': 'https://vwo.com/',
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to display BottomSheet with step information
  void showInfoBottomSheet(
    BuildContext context,
    String title,
    int importanceLevel,
    String description,
    Map<String, String> resources,
  ) {
    showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(maxWidth: double.infinity),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  '${'Importance'.i18n}: ${importanceLevel == 0 ? 'Must Have'.i18n : importanceLevel == 1 ? 'Nice to Have'.i18n : 'Optional'.i18n}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Text(
                  '${'Resources'.i18n}:',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                for (String resourceName in resources.keys)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                      onTap: () => _launchURL(resources[resourceName]!),
                      child: Text(
                        resourceName,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  // Method to launch URLs using url_launcher
  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
