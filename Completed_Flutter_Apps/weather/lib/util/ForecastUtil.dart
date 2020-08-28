import 'package:intl/intl.dart';

class Util{
  static String appId= "637d28a29447c5a022b83161ec1c82d7";

  static String getFormattedDate(DateTime dateTime){
    return DateFormat("EEE, MMM d, y").format(dateTime);
  }
}