import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'unimplemented_lint.dart';

PluginBase createPlugin() => _UnimplementedLintPlugin();

class _UnimplementedLintPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        const UnimplementedLintRule(),
      ];
}