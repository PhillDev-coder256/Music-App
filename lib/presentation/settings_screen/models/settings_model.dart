import '../../../core/app_export.dart';
import 'equalizer_item_model.dart';

class SettingsModel {
  List<EqualizerItemModel> equalizerItemList = [
    EqualizerItemModel(dBCounter: "4 dB", hzCounter: "100 Hz"),
    EqualizerItemModel(dBCounter: "3 dB", hzCounter: "150 Hz"),
    EqualizerItemModel(dBCounter: "0 dB", hzCounter: "200 Hz"),
    EqualizerItemModel(dBCounter: "0 dB", hzCounter: "250 Hz"),
    EqualizerItemModel(dBCounter: "-4 dB", hzCounter: "300 Hz"),
    EqualizerItemModel(dBCounter: "0 dB", hzCounter: "350 Hz")
  ];
}
