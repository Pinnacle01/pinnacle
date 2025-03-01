
import 'package:mobx/mobx.dart';

part 'explore_page_store.g.dart';

class ExplorePageStore = ExplorePageStoreBase with _$ExplorePageStore;

abstract class ExplorePageStoreBase with Store {
  @observable
  int tabIndex = 0;

  @action
  void setTabIndex(int index) {
    tabIndex = index;
  }
}
