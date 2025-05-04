import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_expansion_provider.g.dart';

@riverpod
class TextExpansionProvider extends _$TextExpansionProvider{

  @override
  bool build(){
    return false;
  }

  void toggleText(bool toggle){
    state = !toggle;
    //state = selectedIndex.value
  }
}