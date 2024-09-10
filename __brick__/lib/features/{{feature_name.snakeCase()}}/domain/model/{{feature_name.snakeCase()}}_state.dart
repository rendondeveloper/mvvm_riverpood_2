import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:identaplusschool/core/modeling/dto/view_state.dart';

part '{{feature_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State({    
    @Default(ViewState.initialization) ViewState state,
  }) = _{{feature_name.pascalCase()}}State;
}
