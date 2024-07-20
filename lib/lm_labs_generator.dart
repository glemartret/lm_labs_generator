import 'package:build/build.dart';
import 'package:lm_labs_generator/src/routes_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder routes(BuilderOptions options) =>
    SharedPartBuilder([RoutesGenerator()], 'routes');
