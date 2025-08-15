import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class UnimplementedLintRule extends DartLintRule {
  const UnimplementedLintRule() : super(code: _code);

  static const _code = LintCode(
    name: 'unimplemented_feature',
    problemMessage: 'Unimplemented feature: {0}',
    correctionMessage: 'Complete the implementation of this feature',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addMethodDeclaration((node) {
      if (node.metadata.isNotEmpty) {
        _checkAnnotations(node.metadata, node, reporter);
      }
    });

    context.registry.addFunctionDeclaration((node) {
      if (node.metadata.isNotEmpty) {
        _checkAnnotations(node.metadata, node, reporter);
      }
    });

    context.registry.addConstructorDeclaration((node) {
      if (node.metadata.isNotEmpty) {
        _checkAnnotations(node.metadata, node, reporter);
      }
    });

    context.registry.addFieldDeclaration((node) {
      if (node.metadata.isNotEmpty) {
        for (final variable in node.fields.variables) {
          _checkAnnotations(node.metadata, variable, reporter);
        }
      }
    });

    context.registry.addTopLevelVariableDeclaration((node) {
      if (node.metadata.isNotEmpty) {
        for (final variable in node.variables.variables) {
          _checkAnnotations(node.metadata, variable, reporter);
        }
      }
    });
  }

  void _checkAnnotations(
    List<Annotation> metadata,
    AstNode node,
    ErrorReporter reporter,
  ) {
    for (final annotation in metadata) {
      final annotationName = annotation.name.name;
      
      if (annotationName == 'unimplemented' || annotationName == 'Unimplemented') {
        String message = 'This feature is not yet implemented';
        
        final arguments = annotation.arguments;
        if (arguments != null && arguments.arguments.isNotEmpty) {
          final firstArg = arguments.arguments.first;
          if (firstArg is SimpleStringLiteral) {
            message = firstArg.value;
          }
        }
        
        reporter.atNode(
          node,
          _code,
          arguments: [message],
        );
      }
    }
  }
}