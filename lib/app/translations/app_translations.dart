
import 'en_US/en_US_translation.dart';
import 'fa_IR/fa_IR_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> 
  translations = 
{
    'en_US' : enUs,
    'fa_IR' : faIR
};

}
