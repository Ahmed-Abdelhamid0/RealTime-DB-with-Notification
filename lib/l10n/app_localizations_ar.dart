// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get app_name => 'بنك قناة السويس';

  @override
  String get loading => 'جاري التحميل...';

  @override
  String get check_internet_connection => 'يرجى التحقق من إعدادات الشبكة';

  @override
  String get no_internet => 'لا يوجد اتصال بالإنترنت';

  @override
  String get language => 'English';

  @override
  String get user_name => 'اسم المستخدم';

  @override
  String get welcome_to => 'مرحبا بك!';

  @override
  String get password => 'كلمة المرور';

  @override
  String get forgot_password => 'نسيت كلمة المرور؟';

  @override
  String get forgot_password_title => 'نسيت كلمة المرور';

  @override
  String get log_in => 'تسجيل الدخول';

  @override
  String get user_name_required => 'اسم المستخدم مطلوب';

  @override
  String get user_name_must_be =>
      'يجب أن يتكون اسم المستخدم من 8 إلى 20 حرفًا.';

  @override
  String get password_required => 'كلمة المرور مطلوبة';

  @override
  String get account_locked => 'الحساب مقفل';

  @override
  String get account_locked_content =>
      'لقد تجاوزت الحد الأقصى لمحاولات تسجيل الدخول. لأمان حسابك، تم قفله. يرجى إعادة تعيين كلمة المرور';

  @override
  String get unlock_account => 'إعادة فتح الحساب';

  @override
  String get reset_password => 'إعادة تعيين كلمة المرور';

  @override
  String get cancel => 'إلغاء';

  @override
  String get password_expired => 'انتهت صلاحية كلمة المرور';

  @override
  String get password_expired_content =>
      'انتهت صلاحية كلمة المرور الخاصة بك. يرجى إعادة تعيينها للاستمرار في الوصول إلى حسابك';

  @override
  String get update_password => 'تحديث كلمة المرور';

  @override
  String get already_logged_in => 'مسجل الدخول بالفعل';

  @override
  String get already_logged_in_content =>
      'أنت مسجل الدخول حاليًا على جهاز آخر. للمتابعة هنا، سنقوم بتسجيل خروجك من الجهاز الآخر';

  @override
  String get continue_button => 'متابعة';

  @override
  String get invalid_username => 'اسم المستخدم أو كلمة المرور غير صحيحة';

  @override
  String get invalid_username_content =>
      'يرجى التحقق من تفاصيل تسجيل الدخول والمحاولة مرة أخرى.';

  @override
  String get inactive_user => 'المستخدم غير نشط';

  @override
  String get inactive_user_content =>
      'هذا المستخدم المسجل من قبل لم يكن نشطاً لفترة من الوقت.';

  @override
  String get activate => 'تنشيط';

  @override
  String get error => 'خطأ';

  @override
  String get page_not_found => 'الصفحة غير موجودة';

  @override
  String get login_failed => 'فشل تسجيل الدخول';

  @override
  String get invalid_code =>
      'رمز التحقق غير صحيح، يرجى النقر على إعادة إرسال الرمز';

  @override
  String attempts_left(int count) {
    return 'تبقى $count محاولات';
  }

  @override
  String get max_attempts_exceeded =>
      'لقد تجاوزت الحد الأقصى لعدد محاولات رمز التحقق غير الصالحة';

  @override
  String get resend_code => 'إعادة إرسال الرمز';

  @override
  String resend_code_timer(int seconds) {
    return '$seconds ثانية';
  }

  @override
  String get help => 'المساعدة';

  @override
  String get help_soft_token => 'مساعدة';

  @override
  String get verification => 'التحقق';

  @override
  String get otp_sent_message => 'تم إرسال رمز التحقق إلى رقم هاتفك المسجل.';

  @override
  String get sorry => 'عذرا!ً';

  @override
  String get new_password => 'كلمة المرور';

  @override
  String get confirm_new_password => 'تأكيد كلمة المرور';

  @override
  String get register_new_user_header =>
      'إختر اسم مستخدم وكلمة مرور. احفظهما بشكل سري، ستحتاج إليهما لتسجيل الدخول لاحقًا.';

  @override
  String get validation_length_characters => '8 إلى 64 حرفًا';

  @override
  String get validation_number => 'على الأقل رقم واحد';

  @override
  String get validation_upper_lower =>
      'يجب أن تحتوي على حرف كبير وحرف صغير على الأقل';

  @override
  String get validation_special_character => 'على الأقل رمز خاص واحد';

  @override
  String get password_should_contains => 'يجب أن تحتوي كلمة المرور على ما يلي:';

  @override
  String get strong => 'قوي';

  @override
  String get weak => 'ضعيف';

  @override
  String get medium => 'متوسط';

  @override
  String get confirm_password_required => 'تأكيد كلمة المرور مطلوب';

  @override
  String get confirm_password_match_password =>
      'تأكيد كلمة المرور لا تطابق كلمة المرور';

  @override
  String get password_not_valid => 'كلمة المرور غير صالحة';

  @override
  String get banking_made_easy => 'معاملاتك البنكية أبسط وأسرع – ابدأ الآن!';

  @override
  String get select_registration_method => 'اختر طريقة التسجيل للبدء.';

  @override
  String get cif_number => 'الرقم التعريفيCIF';

  @override
  String get account_number => 'رقم الحساب';

  @override
  String get account_number_iban => 'رقم الحساب/الآيبان';

  @override
  String get card_number => 'رقم الكارت';

  @override
  String get enter_cif_info => 'أدخل هذه المعلومات للتحقق من حسابك.';

  @override
  String get cif_number_hint =>
      'يمكنك العثور على الرقم التعريفي CIF في كشف حسابك\nالبنكي أو عن طريق الاتصال بخدمة العملاء';

  @override
  String get national_id_number => 'بطاقة الرقم القومي/ رقم جواز السفر';

  @override
  String get cif_number_required => 'الرقم التعريفيCIF مطلوب';

  @override
  String get card_number_required => 'رقم البطاقة مطلوب';

  @override
  String get account_number_required => 'رقم الحساب مطلوب';

  @override
  String get national_id_required => 'بطاقة الرقم القومي/ رقم جواز السفر مطلوب';

  @override
  String get contact_bank => 'التواصل مع البنك';

  @override
  String get register_new_user => 'تسجيل مستخدم جديد';

  @override
  String get terms_and_conditions => 'الشروط والأحكام';

  @override
  String get terms_and_conditions_description =>
      'يرجى قراءة وقبول الشروط والأحكام لمتابعة التسجيل.';

  @override
  String get i_have_read_and_agree => 'لقد قرأت وأوافق على الشروط و الأحكام';

  @override
  String get terms_and_conditions_agreement => 'لقد قرأت وأوافق على ';

  @override
  String get failed_to_load_terms => 'فشل في تحميل الشروط';

  @override
  String get new_user => 'مستخدم جديد؟';

  @override
  String get register => 'تسجيل';

  @override
  String get terms_agreement_required =>
      'يجب عليك الموافقة على الشروط والأحكام للاستمرار';

  @override
  String get ok => 'تم';

  @override
  String get okay => 'حسنا';

  @override
  String get update_now => 'تحديث الآن';

  @override
  String get update => 'تحديث';

  @override
  String get later => 'لاحقاً';

  @override
  String get retry_otp_layer =>
      'لقد قمت مؤخرًا بإعادة إرسال رمز OTP، يرجى المحاولة مرة أخرى بعد 88 ثانية';

  @override
  String get attention => 'تنبيه!';

  @override
  String get undergoing_maintenance => 'نحن حاليًا نقوم بأعمال الصيانة.';

  @override
  String get done => 'تم';

  @override
  String get success_activation_message_title => 'تم التسجيل بنجاح!';

  @override
  String get success_register_message_title => 'تم التسجيل بنجاح!';

  @override
  String get success_register_message_body =>
      'تم إعداد حسابك. يمكنك الوصول إلى خدماتك المصرفية بأمان في أي وقت.';

  @override
  String get our_service_will_be_back_up => 'ستعود خدمتنا للعمل قريبًا!';

  @override
  String get confirm_exit => 'تأكيد الخروج';

  @override
  String get exit_message => 'هل تريد حقًا الخروج من التطبيق؟';

  @override
  String get exit => 'خروج';

  @override
  String get card_pin_hint =>
      'هو الرقم المكون من 4 أرقام الذي يتم إدخاله عبر ماكينة الصراف الآلي';

  @override
  String get card_pin => 'الرقم السري للكارت';

  @override
  String get card_pin_required => 'رقم التعريف الشخصي للبطاقة مطلوب';

  @override
  String get home => 'الرئيسية';

  @override
  String get transfer => 'تحويل';

  @override
  String get cards => 'البطاقات';

  @override
  String get menu => 'القائمة';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get please_sign_in_first => 'يرجى تسجيل الدخول أولاً للاستخدام';

  @override
  String get username => 'اسم المستخدم';

  @override
  String get hi => 'مرحبا،';

  @override
  String get transfers => 'التحويلات';

  @override
  String get pay_bills => 'دفع الفواتير';

  @override
  String get converter => 'المحول';

  @override
  String get add_new => 'إضافة جديد';

  @override
  String get current_account => 'الحساب الجاري';

  @override
  String get current_accounts => 'حسابات جارية';

  @override
  String get total_amount => 'إجمالي المبلغ';

  @override
  String get accounts => 'الحسابات';

  @override
  String get egp => 'جنيه مصري';

  @override
  String get egp_en => 'EGP';

  @override
  String get cd_and_td => 'شهادات و ودائع';

  @override
  String get cer_of_deposit => 'شهادة الإيداع';

  @override
  String get time_of_deposit => 'الوديعة الزمنية';

  @override
  String get weekend_saver => 'مدخر نهاية الأسبوع';

  @override
  String get name => 'اسم';

  @override
  String get loans_overdraft => 'القروض و الجاري مدين';

  @override
  String get next_due_date => 'تاريخ الاستحقاق:';

  @override
  String get available_limit => 'الحد المتاح';

  @override
  String get available_balance => 'الرصيد المتاح';

  @override
  String get debit_card => 'بطاقة الخصم';

  @override
  String get credit_card => 'بطاقة الائتمان';

  @override
  String get gold => 'ذهبي';

  @override
  String get platinum => 'بلاتيني';

  @override
  String get view_all => 'عرض الكل';

  @override
  String get loan_name => 'اسم القرض';

  @override
  String get next_due_amount => 'قيمة المستحق التالي:';

  @override
  String get apply_for_new => 'التقديم علي جديد';

  @override
  String get certificate_name => 'اسم الشهادة';

  @override
  String get open_new_account => 'فتح حساب جديد';

  @override
  String get next_interest_amount => 'مبلغ الربح التالي:';

  @override
  String get next_interest_date => 'تاريخ الربح التالي:';

  @override
  String get total_balance => 'إجمالي الرصيد';

  @override
  String get transaction => 'العمليات';

  @override
  String get successful => 'ناجح';

  @override
  String get hot_deal => 'عرض جديد';

  @override
  String get buy_one_desc => 'اشترِ واحدًا واحصل على الثاني بخصم 50%';

  @override
  String get days => 'أيام';

  @override
  String get offers => 'عروض';

  @override
  String get no_recent_transactions => 'لا يوجد تحويلات حديثة';

  @override
  String could_not_load_transactions(Object shortcut) {
    return 'لم نتمكن من تحميل التحويلات';
  }

  @override
  String get reload => 'إعادة التحميل';

  @override
  String get quick_actions => 'إجراءات سريعة';

  @override
  String get quick_actions_sub_title =>
      'قم بتخصيص إجراءاتك السريعة عن طريق إزالة المزيد أو إضافتها';

  @override
  String get pay_credit => 'سداد بطاقة الائتمان';

  @override
  String get donate => 'تبرعات';

  @override
  String get exchange_rate => 'سعر الصرف:';

  @override
  String get open_td => 'طلب فتح  وديعة';

  @override
  String get open_cd => 'طلب فتح سهادة';

  @override
  String get open_account => 'طلب فتح حساب';

  @override
  String get request_chequebook => 'طلب دفتر شيكات';

  @override
  String get locate_us => 'موقعنا';

  @override
  String get support => 'الدعم';

  @override
  String get something_went_wrong => 'حدث خطأ ما!';

  @override
  String get add_new_section => 'إضافة أقسام جديدة';

  @override
  String get edit_dashboard => 'تعديل الصفحة الرئيسية';

  @override
  String get edit_dashboard_header => 'هل تريد إعادة الترتيب؟';

  @override
  String get edit_dashboard_header_content =>
      'فقط اضغط واسحب لإعادة ترتيب القسم أو أي بطاقة داخله، أو إخفائها من الصفحة الرئيسية!ً';

  @override
  String get we_could_not_load_terms_and_conditions =>
      'لم نتمكن من تحميل الشروط والأحكام';

  @override
  String get search => 'البحث';

  @override
  String get beneficiaries => 'المستفيدون';

  @override
  String get soft_tokens => 'رمز الأمان';

  @override
  String get more => 'المزيد';

  @override
  String get management => 'الإدارة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get activate_tokens => 'تفعيل رمز الأمان';

  @override
  String get welcome_to_online_transfer =>
      'مرحبًا بك في خدمة التحويل عبر الإنترنت، يمكنك الآن التحويل إلى أي بنك في مصر. يتطلب استخدام هذه الخدمة تنزيل الرمز الناعم عبر App Store أو Play Store';

  @override
  String get to_download_the_app => 'لتحميل التطبيق';

  @override
  String get click_here => 'اضغط هنا';

  @override
  String get generate_my_token => 'طلب رمز الآمان';

  @override
  String get please_insert_activation =>
      'الرجاء إدخال رمز التفعيل والرقم التسلسلي في تطبيق SCB Token على هاتفك المحمول';

  @override
  String get please_insert_generated_code =>
      'الرجاء إدخال رمز التسجيل الناتج من  SCB Token';

  @override
  String get serial_number => 'الرقم التسلسلي';

  @override
  String get your_activation_code_is => 'رمز التفعيل الخاص بك';

  @override
  String get enter_register_code => 'أدخل رمز التسجيل';

  @override
  String get register_code => 'رمز التسجيل';

  @override
  String get success_register_tokens_content =>
      'تم تفعيل رمز الأمان بنجاح. يمكنك إجراء المعاملة الآن';

  @override
  String get you_must_activate_soft_tokens =>
      'يجب عليك تفعيل الرموز البرمجية أولاً لإضافة المستفيد';

  @override
  String get activate_soft_tokens => 'تفعيل';

  @override
  String get soft_tokens_already_activated => 'تم تفعيل الرموز البرمجية بالفعل';

  @override
  String get manage_beneficiaries => 'إدارة المستفيدين';

  @override
  String get beneficiary_list => 'قائمة المستفيدين';

  @override
  String get currently_dn_have_any_beneficiary => 'حالياً ليس لديك أي مستفيد';

  @override
  String one_day_remaining(Object days) {
    return '$days يوم متبقي';
  }

  @override
  String days_remaining(Object days) {
    return '$days ايام متبقية';
  }

  @override
  String days_v2_remaining(Object days) {
    return '$days يوم متبقي';
  }

  @override
  String get expires_today => 'ينتهي اليوم';

  @override
  String expired_days_ago(Object days) {
    return 'انتهت منذ $days أيام';
  }

  @override
  String get no_recent_offer => 'لا توجد عروض حديثة بعد';

  @override
  String get could_not_load_offers => 'تعذّر تحميل قائمة العروض';

  @override
  String get could_not_load_accounts => 'تعذّر تحميل قائمة الحسابات';

  @override
  String get hide_section => 'إخفاء القسم';

  @override
  String get hide => 'إخفاء';

  @override
  String get show_more_accounts => 'عرض حسابات أخرى';

  @override
  String get show_more_loans => 'عرض المزيد من القروض';

  @override
  String get show_more_deposits => 'عرض المزيد من الودائع';

  @override
  String get show_more_offers => 'عرض المزيد من العروض';

  @override
  String get show_more_transactions => 'عرض المزيد من المعاملات';

  @override
  String get show_more_cards => 'عرض المزيد من البطاقات';

  @override
  String get own_accounts => 'حساباتي';

  @override
  String get within_scb => 'داخل البنك';

  @override
  String get local => 'محلي';

  @override
  String get new_transfer => 'تحويل جديد';

  @override
  String get transfer_history => 'ارشيف التحويل';

  @override
  String get transfer_disclaimer =>
      'سيتم تنفيذ التحويلات المقدمة بعد الساعة 3:00 PM في يوم العمل التالي.';

  @override
  String get schedule_transactions => 'جدولة التحويلات';

  @override
  String get top_pick_for_you => 'أفضل الاختيارات لك';

  @override
  String get account => 'حساب بنكى';

  @override
  String get wallet => 'محفظة';

  @override
  String get mobile => 'الهاتف المحمول';

  @override
  String get edit => 'تعديل';

  @override
  String get view_more => 'عرض المزيد';

  @override
  String get view_less => 'عرض اقل';

  @override
  String get currently_you_dn_have_any_beneficiary =>
      'حاليًا، ليس لديك أي مستفيدين';

  @override
  String could_not_load_beneficiaries(Object shortcut) {
    return 'لم نتمكن من تحميل مستفيدين';
  }

  @override
  String get edit_beneficiary => 'تعديل المستفيد';

  @override
  String get save_updates => 'تحديث';

  @override
  String get delete_beneficiary => 'حذف المستفيد';

  @override
  String get beneficiary_nickname => 'الإسم المستعار';

  @override
  String get bank_name => 'اسم البنك';

  @override
  String get delete => 'حذف';

  @override
  String get confirm_deletion => 'تأكيد الحذف';

  @override
  String get confirm_deletion_msg =>
      'هل أنت متأكد أنك تريد حذف هذا المستفيد من القائمة؟';

  @override
  String get beneficiary_deleted_msg => 'تم حذف المستفيد بنجاح';

  @override
  String get beneficiary_updated_msg => 'تم تحديث قائمة المستفيدين';

  @override
  String get confirm => 'تأكيد';

  @override
  String get summary => 'مراجعة';

  @override
  String get amount => 'المبلغ';

  @override
  String get amount_required => 'المبلغ الأدنى للتحويل هو 1';

  @override
  String get from_required => 'اختر الحساب المرسل للمتابعة';

  @override
  String get to_required => 'اختر الحساب المستلم للمتابعة';

  @override
  String get transfer_limits => 'حدود التحويل';

  @override
  String get date => 'التاريخ:';

  @override
  String get reference => 'الرقم المرجعي:';

  @override
  String get schedule_transfer => 'تحويل مجدول';

  @override
  String get from => 'من';

  @override
  String get to => 'إلى';

  @override
  String get select_account => 'اختر الحساب';

  @override
  String get transfer_successful => 'تم التحويل بنجاح! ';

  @override
  String get rate => 'السعر';

  @override
  String get equal => '=';

  @override
  String get minus => '-';

  @override
  String get add_to_quick_transfer => ' أضف إلى التحويل السر';

  @override
  String get add_to_quick_beneficiary => 'إضافة إلى المستفيدون';

  @override
  String get nick_name => 'الاسم المستعار';

  @override
  String get note_optional => 'ملاحظات (اختيارى)';

  @override
  String get account_number_less_16 => 'رقم الحساب يجب أن يكون 16 رقماً';

  @override
  String get nick_name_required => 'الاسم المستعار  مطلوب';

  @override
  String get dot => '.';

  @override
  String get activated => 'تم التفعيل';

  @override
  String get not_activated => 'غير مُفعل';

  @override
  String get not_registered => 'غير مُسجّل';

  @override
  String get registration_code_invalid => 'رقم التسجيل غير صحيح';

  @override
  String get note => 'ملاحظات (اختيارى):';

  @override
  String get notes => 'ملاحظات:';

  @override
  String get notes_ => 'ملاحظات';

  @override
  String get share => 'مشاركة';

  @override
  String get send_money_to => 'إرسال الأموال إلى';

  @override
  String get card => 'بطاقة';

  @override
  String get token_activation => 'تفعيل رمز الأمان';

  @override
  String get token_activation_msg => 'رمز الامان يجب تفعيله أولاً للمتابعة';

  @override
  String get transfer_limit_exceeded => 'تم تجاوز حد التحويل';

  @override
  String get update_available => 'التحديث متاح';

  @override
  String get new_version_available =>
      'يتوفر إصدار جديد. نوصي بالتحديث للحصول على أفضل تجربة.';

  @override
  String get update_upper_cased => 'تحديث';

  @override
  String get update_required => 'التحديث مطلوب';

  @override
  String get add => 'إضافة';

  @override
  String get beneficiary_added_msg => 'تم إضافة المستفيد بنجاح';

  @override
  String get no_beneficiaries_yet => 'لا يوجد مستفدين حتى الآن';

  @override
  String once_you_add_beneficiary_they_will_show(Object shortcut) {
    return 'بمجرد إضافة المستفيد، سيظهر هنا.';
  }

  @override
  String get no_matches_found => 'لا يوجد تطابقات';

  @override
  String get try_search_with_different_keyboard => 'حاول البحث بأحرف محتلفة';

  @override
  String get search_ => 'بحث...';

  @override
  String get nick_name_characters_error_msg =>
      'يجب أن يكون الاسم المستعار من 2 إلى 35 حرفًا';

  @override
  String get a_new_version_available =>
      'نسخة جديدة من التطبيق متاحة الآن! يمكنك\n تحديث التطبيق للتمتع بالمزايا والتحسينات الجديدة.';

  @override
  String get app_no_longer_supported =>
      ' نسخة تطبيقك قديمة ولم تعد مدعومة، يرجى التحديث للاستمرار في استخدام التطبيق.';

  @override
  String get we_could_not_load_you_list => 'لم نتمكن من تحميل القائمة';

  @override
  String we_could_not_load_the_list(Object shortcut) {
    return 'لم نتمكن من تحميل القائمة';
  }

  @override
  String get transfer_not_available => 'التحويل غير متاح';

  @override
  String get transfer_between_own_accounts =>
      'التحويل بين الحسابات الخاصة غير متاح حاليًا نظرًا لامتلاكك حساب واحد فقط';

  @override
  String get cancel_transfer => 'إلغاء التحويل';

  @override
  String get cancel_transfer_content =>
      'هل أنت متأكد أنك تريد إلغاء التحويل؟\nسيتم فقدان أي بيانات أدخلتها.';

  @override
  String get yes => 'نعم';

  @override
  String get transfer_type => 'نوع التحويل';

  @override
  String get transfer_type_ => 'نوع التحويل';

  @override
  String get credited_amount => 'المبلغ المحول:';

  @override
  String get own => 'شخصى';

  @override
  String get account_number_invalid => 'رقم الحساب / الآيبان غير صحيح.';

  @override
  String get card_number_invalid => 'رقم البطاقة غير صحيح';

  @override
  String get could_not_load_transfer_history =>
      'لم نتمكن من تحميل التحويلات السابقة';

  @override
  String get no_transfers => 'لا التحويلات';

  @override
  String get own_account => 'الحساب الخاص';

  @override
  String get recent_transfers => 'التحويلات الأخيرة';

  @override
  String get transfers_history => 'تاريخ التحويلات';

  @override
  String get normal => 'عادي';

  @override
  String get ipn_instant => 'تحويل لحظي';

  @override
  String get payment_address => 'عنوان الدفع';

  @override
  String get account_iban => 'حساب بنكى';

  @override
  String get local_transfer => 'محلى';

  @override
  String get select_bank => 'اختر البنك';

  @override
  String get beneficiary_name => 'اسم المستفيد';

  @override
  String get beneficiary_name_ => 'اسم المستفيد';

  @override
  String get bank_name_required => 'اسم البنك مطلوب';

  @override
  String get beneficiary_name_required => 'اسم المستفيد مطلوب';

  @override
  String get transfer_details => 'تفاصيل التحويل';

  @override
  String get repeat_transfer => 'تكرار التحويل';

  @override
  String get scheduled => 'مجدولة';

  @override
  String get amount_or_name => 'الاسم او المبلغ';

  @override
  String get select_date_range => 'اختر مدة زمنية';

  @override
  String get apply => 'تطبيق';

  @override
  String get start_date => 'تاريخ البداية';

  @override
  String get end_date => 'تاريخ الانتهاء';

  @override
  String get request_a_card => 'طلب بطاقة';

  @override
  String get available_balance_is_insufficient => 'الرصيد المتاح غير كاف';

  @override
  String amount_with_currency(String amount, String currency) {
    return '$amount $currency';
  }

  @override
  String card_last_4_digits(String digits) {
    return '**** $digits';
  }

  @override
  String get due_amount => 'المبلغ المستحق:';

  @override
  String get due_date => 'تاريخ الاستحقاق:';

  @override
  String get card_details => 'تفاصيل البطاقة';

  @override
  String get pay_card => 'سداد البطاقة';

  @override
  String get today => 'اليوم';

  @override
  String get last_week => 'آخر أسبوع';

  @override
  String get last_month => 'آخر شهر';

  @override
  String get last_3_months => 'آخر 3 شهور';

  @override
  String get select_date => 'اختر التاريخ';

  @override
  String get card_transactions => 'معاملات البطاقة';

  @override
  String get card_limit => 'حد البطاقة';

  @override
  String get no_transactions_yet => 'لا يوجد معاملات';

  @override
  String fractional_amount_part(String decimal) {
    return '.$decimal';
  }

  @override
  String get hidden_amount_asterisks => '********';

  @override
  String get we_could_not_load_your_transactions =>
      'لم نتمكن من تحميل معاملاتك';

  @override
  String get otp_code_sent_to_your_number =>
      'برجاء إدخال رمز الأمان من تطبيق SCB Token.';

  @override
  String get this_fields_accept_2_char => 'هذا الحقل يقبل حرفين كحد أدنى';

  @override
  String get transfer_error =>
      'لم نتمكن من إتمام عملية التحويل بسبب خطأ غير متوقع. يُرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get enable => 'تفعيل';

  @override
  String get disable => 'إلغاء التفعيل';

  @override
  String get enter_password => 'Enter Password';

  @override
  String get account_details => 'تفاصيل الحساب';

  @override
  String get open_new_deposit => 'فتح شهادة/وديعة جديدة';

  @override
  String get interest_rate => 'معدل الفائدة';

  @override
  String get pending_amount => 'المبلغ المعلق';

  @override
  String get loan_details => 'تفاصيل القروض';

  @override
  String get details => 'التفاصيل';

  @override
  String get next_installment_amount => 'قيمة القسط القادم';

  @override
  String get next_installment_date => 'تاريخ القسط القادم';

  @override
  String get paid_installments => 'الأقساط المدفوعة';

  @override
  String get remaining => 'المتبقى';

  @override
  String get installment_frequency => 'تكرار الأقساط';

  @override
  String get fixed_rate => 'معدل الفائدة';

  @override
  String get maturity_left => 'المدة المتبقية';

  @override
  String get collateral_type => 'نوع الضمانة';

  @override
  String get issued_date => 'تاريخ الإصدار';

  @override
  String get na => 'N/A';

  @override
  String get loan_payments => 'مدفوعات القرض';

  @override
  String get upcoming => 'القادم';

  @override
  String get paid => 'مدفوع';

  @override
  String get due => 'متأخر';

  @override
  String get request_cheque_book => 'طلب دفتر شيكات';

  @override
  String get services => 'الخدمات';

  @override
  String get select_number => 'اختر الرقم';

  @override
  String get page => 'صفحة';

  @override
  String get fees => 'الرسوم';

  @override
  String get select_account_required_msg => 'يرجى اختيار الحساب';

  @override
  String get select_leaves_error_msg =>
      'يرجى اختيار عدد أوراق الشيكات للمتابعة';

  @override
  String get need_agree_terms => 'يجب أن توافق على الشروط والأحكام للاستمرار.';

  @override
  String get submitted_successfully => 'تم التقديم بنجاح!';

  @override
  String get your_cheque_request_received =>
      'تم استلام طلب دفتر الشيكات الخاص بك.';

  @override
  String get pages_cheques => 'صفحة';

  @override
  String get more_details => 'مزيد من التفاصيل';

  @override
  String get request_status => 'حالة الطلب';

  @override
  String get current => 'جارى';

  @override
  String get not_eligible_request_msg => 'لا يحق لك طلب دفتر شيكات';

  @override
  String get deposit_details => 'تفاصيل الشهادة';

  @override
  String deposit_no(String number) {
    return 'رقم الشهادة. $number';
  }

  @override
  String months_left(int number) {
    return '/$number شهر';
  }

  @override
  String get redeem_account => 'حساب الخصم';

  @override
  String get interest_account => 'حساب الفائدة';

  @override
  String get payout_details => 'تفاصيل الصرف';

  @override
  String account_type_with_number(String type, String number) {
    return '$type $number';
  }

  @override
  String get interest_frequency => 'تكرار الفائدة';

  @override
  String get blocked_amount => 'المبلغ المحجوز';

  @override
  String percent_rate_with_type(String rate, String type) {
    return 'معدل $type $rate%';
  }

  @override
  String get loan_no => 'رقم القرض';

  @override
  String get chequebook_details => 'تفاصيل دفتر الشيكات';

  @override
  String get used => 'مستخدم';

  @override
  String get used_cheques => 'الشيكات المستخدمة';

  @override
  String get execution_blocked => 'تم حظر التنفيذ';

  @override
  String get select_service => 'اختر الخدمة';

  @override
  String get chequebook => 'دفتر الشيكات';

  @override
  String get my_products => 'منتجاتى';

  @override
  String get products => 'المنتجات';

  @override
  String get empty_chequebooks_msg => 'لا توجد دفاتر شيكات بعد';

  @override
  String error_chequebooks_msg(Object shortcut) {
    return 'لم نتمكن من تحميل دفاتر الشيكات الخاصة بك';
  }

  @override
  String get empty_used_cheques_msg => 'لا توجد شيكات مستخدمة بعد';

  @override
  String error_used_cheques_msg(Object shortcut) {
    return 'لم نتمكن من تحميل قائمة الشيكات الخاصة بك';
  }

  @override
  String get loans => 'القروض';

  @override
  String get saving_account => 'حسابات جارية';

  @override
  String get we_could_not_load_your_loans => 'لم نتمكن من تحميل القروض';

  @override
  String get we_could_not_load_your_payments => 'لم نتمكن من تحميل المدفوعات';

  @override
  String get saving_accounts => 'حسابات التوفير';

  @override
  String get current_affairs => 'حسابات توفير';

  @override
  String get certificates => 'شهادات';

  @override
  String get time_deposits => 'ودائع';

  @override
  String get deposits => 'شهادات';

  @override
  String get deposits_dashboard => 'شهادات و ودائع';

  @override
  String up_to_interest_rate(double interestRate) {
    return 'حتى $interestRate٪';
  }

  @override
  String get cheques => 'دفتر الشيكات';

  @override
  String get not_available => 'غير متاح';

  @override
  String get available => 'متاح';

  @override
  String value_percent(double value) {
    return '$value%';
  }

  @override
  String get min_amount => 'الحد الأدنى للمبلغ';

  @override
  String get no_min_amount => 'بدون حد أدنى';

  @override
  String get debited_account => 'حساب الخصم';

  @override
  String get no_products_found => 'لا توجد منتجات';

  @override
  String get amount_ => 'المبلغ';

  @override
  String minimum_opening_amount_is(String amount, String currency) {
    return 'الحد الأدنى للمبلغ هو $amount $currency';
  }

  @override
  String get account_opened_successfully => 'تم فتح الحساب بنجاح';

  @override
  String get history => 'السابق';

  @override
  String get in_progress => 'قيد التنفيذ';

  @override
  String get rejected => 'مرفوض';

  @override
  String get delivered => 'تم التسليم';

  @override
  String get request_date_and_time => 'تاريخ الطلب';

  @override
  String get request_no => 'رقم الطلب';

  @override
  String get empty_requests_msg => 'لا توجد طلبات بعد';

  @override
  String error_requests_msg(Object shortcut) {
    return 'لم نتمكن من تحميل الطلبات الخاصة بك';
  }

  @override
  String get funding_details => 'تفاصيل التمويل';

  @override
  String get deposit_account => 'حساب الوديعة';

  @override
  String get amount_only => 'المبلغ';

  @override
  String minimum_certificate_amount_is(String amount) {
    return 'الحد الأدنى لقيمة الشهادة هو $amount ومن مضاعفاتها';
  }

  @override
  String minimum_amount_is(String amount, String currency) {
    return ' $currency $amount الحد الأدنى';
  }

  @override
  String minimum_with_amount_and_currency(String amount, String currency) {
    return 'الحد الأدنى للمبلغ هو $amount $currency';
  }

  @override
  String get opened_successfully => 'تم بنجاح';

  @override
  String get amount_is_required => 'المبلغ مطلوب';

  @override
  String get interest_account_is_required => 'يجب تحديد حساب الفائدة';

  @override
  String no_products_found_type(String type) {
    return 'No $type Products Found';
  }

  @override
  String get terms_and_conditions_agreement_required =>
      'يجب أن توافق على الشروط والأحكام للاستمرار.';

  @override
  String get duration => 'المدة';

  @override
  String get frequency => 'التكرار';

  @override
  String get added => 'تم الإضافة';

  @override
  String get overdue_amount => 'المبلغ المتأخر';

  @override
  String multiple_of_minimum_amount(String amount, String currency) {
    return 'مضاعفات $amount $currency';
  }

  @override
  String get debited_amount => 'المبلغ المحول';

  @override
  String get no_results_found => 'لا يوجد نتائج';

  @override
  String account_category_number(String categoryName, String accountId) {
    return '$categoryName - $accountId';
  }

  @override
  String get transactions_list => 'قائمة المعاملات';

  @override
  String transaction_date_format(String day, String month, String year) {
    return '$day $month $year';
  }

  @override
  String get no_accounts_found => 'لم يتم العثور على حسابات';

  @override
  String get no_cards_found => 'لم يتم العثور على بطاقات';

  @override
  String get no_deposit_accounts_found => 'لم يتم العثور على حسابات الودائع';

  @override
  String get credit_card_payment => 'سداد بطاقة الائتمان';

  @override
  String get deduct_amount_from => 'خصم المبلغ من';

  @override
  String get payment_amount => 'مبلغ السداد';

  @override
  String get full_due_amount => 'إجمالي المبلغ المستحق:';

  @override
  String get min_due_amount => 'الحد الأدنى للمبلغ المستحق:';

  @override
  String get other_amount => 'مبلغ آخر';

  @override
  String get transaction_limit_exceeded => 'تم تجاوز حد التحويل';

  @override
  String get transfer_to_charity => 'تحويل إلى جمعية خيرية';

  @override
  String get select_charity => 'اختر الجمعية الخيرية';

  @override
  String get charity => 'الجمعية الخيرية';

  @override
  String get this_field_is_required => 'هذا الحقل مطلوب';

  @override
  String transaction_date_format_with_time(
      String day, String month, String year, String time) {
    return '$day $month $year $time';
  }

  @override
  String amount_must_be_greater_than_min_due_amount(String minAmount) {
    return 'يجب أن يكون المبلغ أكبر من $minAmount';
  }

  @override
  String get reference_ => 'الرقم المرجعي';

  @override
  String get date_ => 'التاريخ';

  @override
  String get transaction_type => 'نوع المعاملة';

  @override
  String get iban => 'IBAN';

  @override
  String get wallet_number => 'رقم المحفظة';

  @override
  String get mobile_number => 'رقم الهاتف المحمول';

  @override
  String get mobile_no_is_invalid => 'رقم الهاتف غير صحيح';

  @override
  String get wallet_no_is_valid => 'رقم المحفظة غير صحيح';

  @override
  String get ipn_address => 'عنوان الدفع';

  @override
  String get ipn_address_invalid => 'عنوان الدفع الفورى غير صحيح';

  @override
  String get savings => 'توفير';

  @override
  String get change_password => 'تغيير كلمة المرور';

  @override
  String get change_pass_page_msg =>
      'يرجى إدخال كلمة مرور قوية وفريدة، واحتفظ بها لاستخدامها لاحقًا عند تسجيل الدخول.';

  @override
  String disclaimer_minimum_amount_is_and_its_multiples(
      String type, String amount) {
    return 'الحد الأدنى لقيمة $type هو $amount ومن مضاعفاتها';
  }

  @override
  String get deposit => 'وديعة';

  @override
  String get current_password => 'كلمة المرور الحالية';

  @override
  String get current_password_invalid => 'كلمة المرور الحالية غير صحيحة.';

  @override
  String get successful_change => 'تم التغيير بنجاح!';

  @override
  String get password_changed_successfully => 'تم تغيير كلمة المرور بنجاح.';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get contactUs => 'تواصل معنا';

  @override
  String get email => 'البريد الإلكترونى';

  @override
  String get website => 'الموقع الإلكترونى';

  @override
  String get call_center => 'مركز الاتصال';

  @override
  String get follow_us => 'تابعنا';

  @override
  String get online_support => 'الدعم عبر الإنترنت';

  @override
  String get exchange_rate_ => 'سعر الصرف';

  @override
  String last_update(String time) {
    return 'آخر تحديث: $time';
  }

  @override
  String get currency_converter => 'تحويل عملة';

  @override
  String get egp_exchange_rate => 'السعر في الوقت الحالى';

  @override
  String get buy => 'شراء';

  @override
  String get sell => 'بيع';

  @override
  String get selected_currency => 'اختر العملة';

  @override
  String get hide_balance_prompt_title_hidden => 'تم الآن إخفاء الأرصدة';

  @override
  String get hide_balance_prompt_title_visible => 'أصبحت الأرصدة مرئية الآن';

  @override
  String get hide_balance_prompt_subtitle =>
      'اقلب الشاشة لأسفل لإخفاء أو عرض الرصيد، أو اضغط على رمز العين أعلى الرصيد.';

  @override
  String get got_it => 'حسنًا';

  @override
  String get dont_show_again => 'لا تعرض هذا مرة أخرى';

  @override
  String get hide_balance_by_default => 'إخفاء الرصيد بشكل افتراضى';

  @override
  String cd_no(String number) {
    return 'رقم الشهادة. $number';
  }

  @override
  String td_no(String number) {
    return 'رقم الوديعة. $number';
  }

  @override
  String get certificate => 'الشهادة';

  @override
  String get debited_account_is_required => 'يجب تحديد حساب الخصم أولا';

  @override
  String get out_side_egypt => 'خارج مصر';

  @override
  String get out_side_egypt_number => '19093 (202+)';

  @override
  String maximum_amount_is(String amount, String currency) {
    return 'الحد الأقصى. $amount $currency';
  }

  @override
  String min_amount_is(String amount, String currency) {
    return 'دقيقة. $amount $currency';
  }

  @override
  String get login_to_manage => 'سجّل الدخول لإدارة أموالك';

  @override
  String get new_password_field => 'كلمة المرور الجديدة';

  @override
  String get confirm_new_password_field => 'تأكيد كلمة المرور الجديدة';

  @override
  String get we_could_not_load_your_cards => 'لم نتمكن من تحميل حساباتك';

  @override
  String get we_could_not_load_your_accounts => 'لم نتمكن من تحميل حساباتك';

  @override
  String get we_could_not_load_your_cd_and_td =>
      'لم نتمكن من تحميل الشهادات و الودائع';

  @override
  String get we_could_not_load_offers => 'لم نتمكن من تحميل العروض';

  @override
  String password_dn_match(Object shortcut) {
    return 'كلمات المرور غير متطابقة.';
  }

  @override
  String get edit_actions => 'تعديل الإجراءات';

  @override
  String get current_pass_required => 'كلمة المرور مطلوبة';

  @override
  String get ahmed => 'Ahmed';

  @override
  String get another_account => 'حساب آخر';

  @override
  String get are_you_sure_you_want_to_exit => 'هل أنت متأكد أنك تريد الخروج؟';

  @override
  String get are_you_sure_you_want_to_exit_info =>
      'الخروج الآن يعني فقدان التقدم الحالي وعدم القدرة على المتابعة من حيث توقفت.';

  @override
  String get request_date => 'تاريخ الطلب';

  @override
  String get overdue_days => 'أيام التأخير';

  @override
  String get frequently_transferred_to => 'التحويلات المتكررة';

  @override
  String get select_favorite_beneficiary => 'Select Favorite Beneficiary';

  @override
  String get maichel => 'مايكل';

  @override
  String get one_time => 'مرة واحدة';

  @override
  String get recurring => 'متكرر';

  @override
  String get select_start_date => 'اختر التاريخ';

  @override
  String get number_of_occurrences => 'عدد المرات';

  @override
  String get daily => 'يومى';

  @override
  String get weekly => 'أسبوعى';

  @override
  String get monthly => 'شهرى';

  @override
  String get execution_date => 'تاريخ التنفيذ';

  @override
  String get occurrences => 'عدد التحويلات';

  @override
  String times(String times) {
    return '$times مرات';
  }

  @override
  String get date_of_submission => 'تاريخ الإنشاء';

  @override
  String get date_of_execution => 'تاريخ التنفيذ';

  @override
  String maximum_number_of_recurring_is(String max) {
    return 'الحد الأقصى لعدد مرات  $maxالتكرار هو ';
  }

  @override
  String account_type(String accountType) {
    return '$accountType حساب';
  }

  @override
  String get no_beneficiaries_added => 'No beneficiaries added';

  @override
  String
      get you_can_add_a_beneficiary_after_making_a_transfer_for_quicker_access_next_time =>
          'يمكنك إضافة مستفيد بعد إجراء تحويل لتسهيل الوصول في المرات القادمة.';

  @override
  String get branches => 'الفروع';

  @override
  String get atm => 'ماكينة الصراف الآلي';

  @override
  String get list_view => 'عرض القائمة';

  @override
  String get selected => 'محدد';

  @override
  String get direction => 'الاتجاه';

  @override
  String get branches_list => 'قائمة الفروع';

  @override
  String get atm_list => 'قائمة أجهزة الصراف الآلي';

  @override
  String open_till(String time) {
    return 'مفتوح $time';
  }

  @override
  String kilometers_away(String distance) {
    return 'على بعد $distance كم';
  }

  @override
  String transfer_amount(String? optional) {
    return 'قيمة التحويل $optional:';
  }

  @override
  String transfer_date(String? optional) {
    return 'تاريخ التحويل $optional:';
  }

  @override
  String get next => 'القادم';

  @override
  String get new_text => 'جديد';

  @override
  String get cancel_schedule_transfer => 'إلغاء الجدولة';

  @override
  String get schedule_details => 'تفاصيل التحويل المجدول';

  @override
  String get schedule_transfer_empty_message =>
      'لا توجد أي تحويلات مجدولة لعرضها.';

  @override
  String get schedule_cancellation_dialog_title => 'إلغاء الجدولة';

  @override
  String get schedule_cancellation_dialog_content =>
      'بإلغاء هذا التحويل المجدول،جميع التحويلات القادمة لن يتم تنفيذها';

  @override
  String get cancel_schedule => 'إلغاء الجدولة';

  @override
  String get interest_rate_is_required => 'يجب تحديد سعر الفائدة';

  @override
  String get select_currency => 'اختر العملة';

  @override
  String get forget_pass_page_msg =>
      'لإعادة تعيين كلمة المرور، يرجى التحقق من بياناتك.\nسنرسل رمزًا إلى رقم هاتفك المحمول المُسجل.';

  @override
  String get scb_card_num => 'رقم البطاقة البنكية';

  @override
  String get card_pin_num => 'الرقم السرى للبطاقة';

  @override
  String get exp_date => 'MM/YY';

  @override
  String get pin_msg_atm =>
      'هذا الرقم السري هو كلمة المرور التي تستخدمها في أجهزة\nالصراف الآلي.';

  @override
  String get invalid_card_number => 'رقم الكارت غير صحيح';

  @override
  String get password_incorrect => 'الرقم السري غير صحيح';

  @override
  String get successful_reset => 'إعادة تعيين ناجحة!';

  @override
  String get password_reset_successfully => 'تم إعادة تعيين كلمة المرور بنجاح';

  @override
  String get some_data_invalid =>
      'بعض من البيانات المدخلة غير صحيحة،برجاء التاكد والمحاولة مرة أخرى';

  @override
  String amount_must_be_less_than_max_due_amount(String maxAmount) {
    return 'يجب أن يكون المبلغ أقل من $maxAmount';
  }

  @override
  String get cant_show_nearby_branches_atm =>
      'لا يمكن عرض الفروع/أجهزة الصراف الآلي القريبة';

  @override
  String get cant_show_nearby_branches_atm_info =>
      'لم نتمكن من الوصول إلى موقعك. لعرض الفروع وأجهزة الصراف الآلي القريبة، يُرجى تفعيل خدمات الموقع من إعدادات جهازك.';

  @override
  String get enable_location => 'تفعيل الموقع';

  @override
  String x_results_found(int count) {
    return 'تم العثور على $count نتائج';
  }

  @override
  String get deactivate => 'إلغاء التفعيل';

  @override
  String get session_expired_message =>
      'انتهت صلاحية الجلسة. يُرجى تسجيل الدخول مرة أخرى للمتابعة.';

  @override
  String get session_expired => 'انتهت الجلسة';

  @override
  String get connection_timeout => 'مهلة الاتصال';

  @override
  String get compromised_device_message =>
      'هذا الجهاز مروّت أو مكسور الحماية. لأسباب أمنية، لا يجب استخدام هذا التطبيق. لن يعمل.';

  @override
  String get compromised_device_title => 'تنبيه أمني';

  @override
  String get swift_code => 'الرمز التعريفي للبنك';

  @override
  String get iban_number => 'رقم IBAN';

  @override
  String get copied_successfully => 'تم النسخ بنجاح';

  @override
  String disclaimer_cd(String amount) {
    return 'الحد الأدنى لقيمة الشهادة هو $amount';
  }

  @override
  String disclaimer_td(String amount) {
    return 'الحد الأدنى لقيمة الوديعة هو $amount';
  }

  @override
  String get empty_string => '';

  @override
  String get select_leaves_number_to_proceed =>
      'يرجى اختيار عدد أوراق الشيكات للمتابعة';

  @override
  String get show_session_overlay => 'Show session overlay';

  @override
  String token_expires_at(Object time) {
    return 'Token Expires At: $time';
  }

  @override
  String expires_in(Object time) {
    return 'Expires In: \$$time seconds';
  }

  @override
  String eligible_for_refresh(Object value) {
    return 'Eligible for Refresh: $value';
  }

  @override
  String refreshing(Object value) {
    return 'Refreshing: $value';
  }

  @override
  String get no => 'No';

  @override
  String get idle => 'Idle';

  @override
  String get authenticate_to_complete_setup => 'قم بالمصادقة لإكمال الإعداد';

  @override
  String get authenticate_to_login => 'قم بالمصادقة لتسجيل الدخول';

  @override
  String get biometric_disabled_for_device_title =>
      'تم تعطيل تسجيل الدخول بالبصمة';

  @override
  String get biometric_disabled_for_device_message =>
      'قمنا بإلغاء تسجيل الدخول بالبصمة لهذا الجهاز لأننا لاحظنا تسجيل دخول من جهاز آخر.';

  @override
  String x_leaves(int number) {
    return '$number صفحة';
  }

  @override
  String get no_more_transfer_to_display => 'No more transfers to display';

  @override
  String get life_board => 'Lifeboard';

  @override
  String get please_try_again_later => 'اعد المحاوله في وقت اخر';

  @override
  String get otp_code_sent_to_your_number_new =>
      'تم إرسال رمز التحقق إلى رقم هاتفك المسجل.';

  @override
  String get life_board_onboarding_sub_text =>
      'تابع كل فعالياتك في عرض ذكي وسهل الاستخدام.';

  @override
  String get discover => 'استكشف';

  @override
  String get add_new_event_title => 'إضافة فعالية جديدة';

  @override
  String get event_details_title => 'تفاصيل الفعالية';

  @override
  String get event_details_subtitle =>
      'من فضلك أدخل اسم الفعالية واختر التاريخ لإنشاء فعالية جديدة.';

  @override
  String get event_name_hint => 'اسم الفعالية';

  @override
  String get event_type_hint => 'نوع الفعالية';

  @override
  String get select_type_hint => 'اختر نوع الفعالية';

  @override
  String get event_date_hint => 'تاريخ الفعالية';

  @override
  String get event_note_hint => 'ملحوظة (إختياري)';

  @override
  String get event_added_title => 'تمت إضافة الفعالية!';

  @override
  String get event_added_message => 'تمت إضافة الفعالية بنجاح';

  @override
  String get done_button => 'تم';

  @override
  String get this_field_required => 'هذا الحقل مطلوب';

  @override
  String get update_event_button => ' تحديث الفعالية';

  @override
  String get delete_event_button => 'حذف الفعالية';

  @override
  String get confirmDeletionTitle => 'تأكيد الحذف';

  @override
  String get confirmDeletionSubtitle =>
      'هل أنت متأكد أنك تريد حذف هذه الفعالية؟';

  @override
  String get total_earning => 'إجمالي الأرباح';

  @override
  String get total_dues => 'إجمالي المستحقات';

  @override
  String get monthly_overview => 'ملخص الشهر';

  @override
  String get never_miss_thing => 'كن على اطلاع دائم!';

  @override
  String get check_your_events => 'اطلع على الفعاليات القادمة الخاصة بك';

  @override
  String get click_to_discover => 'اضغط لاستكشافها';

  @override
  String you_have_events(int count) {
    return 'لديك $count فعاليات اليوم';
  }

  @override
  String today_with_date(String date) {
    return 'اليوم, $date';
  }

  @override
  String get select_year => 'اختر السنة';

  @override
  String get could_not_load_events => 'لم نتمكن من تحميل الفاعليات الخاصة بك';

  @override
  String get you_have_no_events => 'لا توجد أي فعاليات لهذا الشهر';

  @override
  String month_year(String month, String year) {
    return '$year $month';
  }

  @override
  String get welcome_to_lifeboard => 'أهلاً بك في';

  @override
  String get add_new_scheduled_transfer => 'إضافة تحويل مجدول جديد';

  @override
  String get birthday => 'عيد ميلاد';

  @override
  String get anniversary => 'ذكرى';

  @override
  String get other => 'أخرى';

  @override
  String get app_language => 'لغة التطبيق';

  @override
  String get locale_language => 'العربية';

  @override
  String get english => 'English';

  @override
  String get arabic => 'العربية';

  @override
  String get total_available_balance => 'إجمالى الرصيد المتاح';

  @override
  String get deactivate_biometric_login => 'إلغاء تفعيل الدخول بالبصمة';

  @override
  String get deactivate_biometric_login_msg =>
      'هل أنت متأكد أنك تريد إلغاء تفعيل الدخول بالبصمة؟';

  @override
  String get enable_biometric => 'تفعيل الدخول بالبصمة';

  @override
  String get biometric_login_deactivated_successfully =>
      'تم إلغاء تفعيل الدخول بالبصمة بنجاح';

  @override
  String get biometric_activated_successfully =>
      'تم تفعيل الدخول بالبصمة بنجاح';

  @override
  String get biometric_activation_failed => 'تعذر تفعيل تسجيل الدخول بالبصمة';

  @override
  String get biometric_deactivation_failed => 'تعذر إيقاف تسجيل الدخول بالبصمة';

  @override
  String get face_id_fingerprint => 'بصمة الوجه / بصمة الإصبع';

  @override
  String get january => 'يناير';

  @override
  String get february => 'فبراير';

  @override
  String get march => 'مارس';

  @override
  String get april => 'ابريل';

  @override
  String get may => 'مايو';

  @override
  String get june => 'يونيه';

  @override
  String get july => 'يوليو';

  @override
  String get august => 'أغسطس';

  @override
  String get september => 'سبتمبر';

  @override
  String get october => 'اكتوبر';

  @override
  String get november => 'نوفمبر';

  @override
  String get december => 'ديسمبر';

  @override
  String get receive_cd_interest => 'استلام عائد الشهادة';

  @override
  String get receive_td_interest => 'استلام عائد الوديعة';

  @override
  String get pay_loan_due => 'سدد قسط القرض';

  @override
  String get pay_credit_card_due => 'سدّد مستحقات بطاقة الائتمان';

  @override
  String get event_updated_successfully => 'تم تحديث الفعالية بنجاح';

  @override
  String get event_deleted_successfully => 'تم حذف الفعالية بنجاح';

  @override
  String weeks_left(int number) {
    return '/$number اسبوع';
  }

  @override
  String get maximum_limit_reached => 'تم الوصول إلى الحد الأقصى';

  @override
  String maximum_limit_reached_message(int number) {
    return 'يمكنك اختيار ما يصل إلى $number إجراءات سريعة فقط. لإضافة إجراء جديد، يرجى إلغاء تحديد أحد العناصر الحالية.';
  }

  @override
  String get minimum_limit_reached => 'الحد الأدنى غير مكتمل';

  @override
  String minimum_limit_reached_message(int number) {
    return 'يجب اختيار $number إجراءات سريعة على الأقل للمتابعة. يرجى تحديد المزيد لإكمال الإعداد.';
  }

  @override
  String you_have_events_today(int number) {
    return 'لديك $number فعاليات اليوم';
  }

  @override
  String get soft_token_welcome_msg =>
      'مرحبًا بك في تفعيل الرمز، ستقوم بذلك خلال خطوات بسيطة.';

  @override
  String get soft_token_activation_step_one_title => 'احصل على رمز التسجيل';

  @override
  String get soft_token_activation_step_one_sub_title =>
      'افتح تطبيق SCB Token، واتبع التعليمات، ثم انسخ رمز التسجيل.';

  @override
  String get soft_token_activation_step_two_title => 'الصق الرمز';

  @override
  String get soft_token_activation_step_two_sub_title =>
      'عد إلى تطبيق SCB موبايل للصق رمز التسجيل.';

  @override
  String get soft_token_activation_step_three_title => 'إكمال التفعيل';

  @override
  String get soft_token_activation_step_three_sub_title =>
      'اضغط على \"متابعة\" في تطبيق الرمز، ثم عد إلى هنا لإكمال التفعيل.';

  @override
  String get view_demo => 'شاهد الفديو';

  @override
  String get soft_token_support => 'لمزيد من الدعم؟';

  @override
  String step_of(Object currentStep, Object totalSteps) {
    return 'الخطوة $currentStep من $totalSteps';
  }

  @override
  String get get_registration_code => 'أدخل رمز التسجيل';

  @override
  String get get_your_registration_code =>
      'افتح تطبيق التوكن الإلكتروني، وانسخ رمز التسجيل، ثم الصقه هنا.';

  @override
  String get soft_token_get_registration_code_msg =>
      'افتح تطبيق SCB Token، وانسخ رمز التسجيل، ثم ارجع إلى هنا للصقه.';

  @override
  String get complete_activation => 'إكمال التفعيل';

  @override
  String get complete_activation_msg =>
      'تابع الخطوات التالية في تطبيق التوكن الإلكتروني الخاص بك.';

  @override
  String get scb_token_app => 'SCB Token تطبيق  ';

  @override
  String get open_app => 'فتح التطبيق';

  @override
  String get soft_token_app_tapped_confirmation =>
      'نعم، لقد ضغطت على \"متابعة\" في تطبيق SCB Token.';

  @override
  String get soft_token_app_tapped_confirmation_msg =>
      'هذا يؤكد أنك أتممت الإعداد داخل تطبيق SCB Token.';

  @override
  String get soft_token_activation_in_few_steps => 'أهم المميزات';

  @override
  String get ok_got_it => 'حسنًا، فهمت.';

  @override
  String get download_scb_soft_token_app => 'حمّل تطبيق Soft Token';

  @override
  String get copy_following_code => 'قم بنسخ التالي';

  @override
  String get download_and_install_now => 'حمّل وثبّت الآن';

  @override
  String get copy_following_code_msg =>
      'يرجى إدخال رمز التفعيل والرقم التسلسلي في تطبيق التوكن الإلكتروني.';

  @override
  String get download_scb_soft_token_app_msg =>
      'استخدم تطبيق SCB Token لتفعيل رمز الامان الخاص بك.';

  @override
  String get soft_token_activation_confirmation_error_msg =>
      'يرجى تأكيد تفعيل التوكن قبل المتابعة.';

  @override
  String get soft_token_closing_confirmation_msg =>
      'الخروج الآن سيُلغي كل التعديلات التي أجريتها.';

  @override
  String get go_to_scb_app => 'اذهب الي التطبيق';
}
