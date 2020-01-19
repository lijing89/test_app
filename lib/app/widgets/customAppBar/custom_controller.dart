import 'package:transformer_page_view/transformer_page_view.dart';

class CustomAppbarController extends IndexController {
    // listen scroll
    static const int SCROLL = 0;

    // Autoplay is started
    static const int SELECT = 2;

    double pos;
    double maxPos;

    int index;
    bool animation;
    bool showItems = false;

    CustomAppbarController();

    void select({int indexTo}) {
        event = CustomAppbarController.SELECT;
        index = indexTo;
        notifyListeners();
    }

    //增加滚动监听方法
    void scroll(){
        event = CustomAppbarController.SCROLL;
        notifyListeners();
    }

}
