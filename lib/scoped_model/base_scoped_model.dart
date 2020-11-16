import 'package:goldsilverrate/enum/status_indicator.dart';
import 'package:scoped_model/scoped_model.dart';

class BaseModel extends Model {
  StatusIndicator _state;
  StatusIndicator get state => _state;

  setState(StatusIndicator newState) {
    _state = newState;
    notifyListeners();
  }
}
