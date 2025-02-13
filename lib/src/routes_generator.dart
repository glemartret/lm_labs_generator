import 'dart:async';

import 'package:build/build.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';

class RoutesGenerator extends Generator {
  @override
  FutureOr<String?> generate(LibraryReader library, BuildStep buildStep) {
    final featureName =
        buildStep.inputId.pathSegments
            .skipWhile((part) => part != 'features')
            .skip(1)
            .firstOrNull
            ?.camelCase;

    if (featureName == null) {
      return null;
    }

    return '''
  List<RouteBase> get \$${featureName}Routes => \$appRoutes;
  ''';
  }
}
