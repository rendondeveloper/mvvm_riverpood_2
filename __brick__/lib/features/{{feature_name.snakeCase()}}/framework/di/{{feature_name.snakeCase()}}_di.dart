import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:identaplusschool/core/di/core_di.dart';
import 'package:identaplusschool/features/{{feature_name.snakeCase()}}/data/data_export.dart'
    show {{feature_name.pascalCase()}}DataSource, {{feature_name.pascalCase()}}Repository;
import 'package:identaplusschool/features/{{feature_name.snakeCase()}}/domain/domain_export.dart'
    show {{feature_name.pascalCase()}}State;
import 'package:identaplusschool/features/{{feature_name.snakeCase()}}/framework/presentation/provider/{{feature_name.snakeCase()}}_provider.dart';

final {{feature_name.camelCase()}}DataSourceProvider = Provider.autoDispose<{{feature_name.pascalCase()}}DataSource>(
    (provider) =>
        {{feature_name.pascalCase()}}DataSource(apiConnect: provider.read(apiConnectProvider)));

final {{feature_name.camelCase()}}RepositoryProvider = Provider.autoDispose<{{feature_name.pascalCase()}}Repository>(
    (provider) =>
        {{feature_name.pascalCase()}}Repository(dataSource: provider.read({{feature_name.camelCase()}}DataSourceProvider)));

final {{feature_name.camelCase()}}Provider =
    StateNotifierProvider.autoDispose<{{feature_name.pascalCase()}}Provider, {{feature_name.pascalCase()}}State>((provider) {
  return {{feature_name.pascalCase()}}Provider(repository: provider.read({{feature_name.camelCase()}}RepositoryProvider));
});
