// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `Get a power bank`
  String get takeCharge {
    return Intl.message(
      'Get a power bank',
      name: 'takeCharge',
      desc: '',
      args: [],
    );
  }

  /// `Choose a verification method`
  String get chooseVerificationMethod {
    return Intl.message(
      'Choose a verification method',
      name: 'chooseVerificationMethod',
      desc: '',
      args: [],
    );
  }

  /// `Telegram`
  String get telegram {
    return Intl.message(
      'Telegram',
      name: 'telegram',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `By logging in or registering, you accept the terms of the`
  String get byLoggingInRegisteringYouAcceptTheTerms {
    return Intl.message(
      'By logging in or registering, you accept the terms of the',
      name: 'byLoggingInRegisteringYouAcceptTheTerms',
      desc: '',
      args: [],
    );
  }

  /// `user agreement and security`
  String get userAgreementsAndSecurity {
    return Intl.message(
      'user agreement and security',
      name: 'userAgreementsAndSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get closeUp {
    return Intl.message(
      'Close',
      name: 'closeUp',
      desc: '',
      args: [],
    );
  }

  /// `Get a power bank`
  String get getPowerBank {
    return Intl.message(
      'Get a power bank',
      name: 'getPowerBank',
      desc: '',
      args: [],
    );
  }

  /// `Return power bank`
  String get returnPowerBank {
    return Intl.message(
      'Return power bank',
      name: 'returnPowerBank',
      desc: '',
      args: [],
    );
  }

  /// `Reset filter`
  String get resetFilter {
    return Intl.message(
      'Reset filter',
      name: 'resetFilter',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Login to profile`
  String get loginToProfile {
    return Intl.message(
      'Login to profile',
      name: 'loginToProfile',
      desc: '',
      args: [],
    );
  }

  /// `Rental Packages`
  String get rentalPackages {
    return Intl.message(
      'Rental Packages',
      name: 'rentalPackages',
      desc: '',
      args: [],
    );
  }

  /// `History of orders`
  String get historyOfOrders {
    return Intl.message(
      'History of orders',
      name: 'historyOfOrders',
      desc: '',
      args: [],
    );
  }

  /// `My cards`
  String get myCards {
    return Intl.message(
      'My cards',
      name: 'myCards',
      desc: '',
      args: [],
    );
  }

  /// `Rates`
  String get rates {
    return Intl.message(
      'Rates',
      name: 'rates',
      desc: '',
      args: [],
    );
  }

  /// `Pricing`
  String get pricing {
    return Intl.message(
      'Pricing',
      name: 'pricing',
      desc: '',
      args: [],
    );
  }

  /// `Documentation`
  String get documentation {
    return Intl.message(
      'Documentation',
      name: 'documentation',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `About the application`
  String get aboutTheApplication {
    return Intl.message(
      'About the application',
      name: 'aboutTheApplication',
      desc: '',
      args: [],
    );
  }

  /// `Join us`
  String get joinUs {
    return Intl.message(
      'Join us',
      name: 'joinUs',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get points {
    return Intl.message(
      'Points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `We will send a verification code to your number`
  String get weWillSendVerificationCodeToYourNumber {
    return Intl.message(
      'We will send a verification code to your number',
      name: 'weWillSendVerificationCodeToYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a confirmation code to your phone number`
  String get weHaveSentConfirmationCodeToYourPhoneNumber {
    return Intl.message(
      'We have sent a confirmation code to your phone number',
      name: 'weHaveSentConfirmationCodeToYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Wrong code entered`
  String get wrongCodeEntered {
    return Intl.message(
      'Wrong code entered',
      name: 'wrongCodeEntered',
      desc: '',
      args: [],
    );
  }

  /// `Send again`
  String get sendAgain {
    return Intl.message(
      'Send again',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueButton {
    return Intl.message(
      'Continue',
      name: 'continueButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Personal data`
  String get personalData {
    return Intl.message(
      'Personal data',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `score`
  String get score {
    return Intl.message(
      'score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `All your rental data and accrued points will be permanently deleted.`
  String get allYourRentalDataAndAccruedPointsWillBePermanentlyDeleted {
    return Intl.message(
      'All your rental data and accrued points will be permanently deleted.',
      name: 'allYourRentalDataAndAccruedPointsWillBePermanentlyDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter age`
  String get enterAge {
    return Intl.message(
      'Enter age',
      name: 'enterAge',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Profitable offer`
  String get profitableOffer {
    return Intl.message(
      'Profitable offer',
      name: 'profitableOffer',
      desc: '',
      args: [],
    );
  }

  /// `at favorable prices!`
  String get atFavorablePrices {
    return Intl.message(
      'at favorable prices!',
      name: 'atFavorablePrices',
      desc: '',
      args: [],
    );
  }

  /// `How it works`
  String get howItWorks {
    return Intl.message(
      'How it works',
      name: 'howItWorks',
      desc: '',
      args: [],
    );
  }

  /// `Choose a Rental Packages`
  String get chooseRentalPackages {
    return Intl.message(
      'Choose a Rental Packages',
      name: 'chooseRentalPackages',
      desc: '',
      args: [],
    );
  }

  /// `Standard`
  String get standard {
    return Intl.message(
      'Standard',
      name: 'standard',
      desc: '',
      args: [],
    );
  }

  /// `For a week`
  String get forWeek {
    return Intl.message(
      'For a week',
      name: 'forWeek',
      desc: '',
      args: [],
    );
  }

  /// `instead of`
  String get insteadOf {
    return Intl.message(
      'instead of',
      name: 'insteadOf',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get days {
    return Intl.message(
      'days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Rent`
  String get rent {
    return Intl.message(
      'Rent',
      name: 'rent',
      desc: '',
      args: [],
    );
  }

  /// `during the week`
  String get duringTheWeek {
    return Intl.message(
      'during the week',
      name: 'duringTheWeek',
      desc: '',
      args: [],
    );
  }

  /// `A few more bonuses`
  String get aFewMoreBonuses {
    return Intl.message(
      'A few more bonuses',
      name: 'aFewMoreBonuses',
      desc: '',
      args: [],
    );
  }

  /// `sum`
  String get sum {
    return Intl.message(
      'sum',
      name: 'sum',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message(
      'Buy',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Choose payment method`
  String get choosePaymentMethod {
    return Intl.message(
      'Choose payment method',
      name: 'choosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Subscribed`
  String get subscribed {
    return Intl.message(
      'Subscribed',
      name: 'subscribed',
      desc: '',
      args: [],
    );
  }

  /// `You have signed up for a one-time Rental Packages that has certain benefits.`
  String get youHaveSignedUpForOneTimeRentalPackagesThatHasCertainBenefits {
    return Intl.message(
      'You have signed up for a one-time Rental Packages that has certain benefits.',
      name: 'youHaveSignedUpForOneTimeRentalPackagesThatHasCertainBenefits',
      desc: '',
      args: [],
    );
  }

  /// `To main menu`
  String get toMainMenu {
    return Intl.message(
      'To main menu',
      name: 'toMainMenu',
      desc: '',
      args: [],
    );
  }

  /// `Used`
  String get used {
    return Intl.message(
      'Used',
      name: 'used',
      desc: '',
      args: [],
    );
  }

  /// `Rental start`
  String get rentalStart {
    return Intl.message(
      'Rental start',
      name: 'rentalStart',
      desc: '',
      args: [],
    );
  }

  /// `Rental amount`
  String get rentalAmount {
    return Intl.message(
      'Rental amount',
      name: 'rentalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Powerbank ID`
  String get powerBankId {
    return Intl.message(
      'Powerbank ID',
      name: 'powerBankId',
      desc: '',
      args: [],
    );
  }

  /// `In detail`
  String get detail {
    return Intl.message(
      'In detail',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `Debt payable`
  String get debtPayable {
    return Intl.message(
      'Debt payable',
      name: 'debtPayable',
      desc: '',
      args: [],
    );
  }

  /// `End of lease`
  String get endOfLease {
    return Intl.message(
      'End of lease',
      name: 'endOfLease',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `This is where your cards and points are stored.`
  String get thisIsWhereYourCardsAndPointsAreStored {
    return Intl.message(
      'This is where your cards and points are stored.',
      name: 'thisIsWhereYourCardsAndPointsAreStored',
      desc: '',
      args: [],
    );
  }

  /// `Delete card?`
  String get deleteCard {
    return Intl.message(
      'Delete card?',
      name: 'deleteCard',
      desc: '',
      args: [],
    );
  }

  /// `Add card`
  String get addCard {
    return Intl.message(
      'Add card',
      name: 'addCard',
      desc: '',
      args: [],
    );
  }

  /// `Linking a new card`
  String get linkingNewCard {
    return Intl.message(
      'Linking a new card',
      name: 'linkingNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Your card details are securely protected. You won't need to re-enter your details for future payments.`
  String get yourCardDetailsAreSecurelyProtected {
    return Intl.message(
      'Your card details are securely protected. You won\'t need to re-enter your details for future payments.',
      name: 'yourCardDetailsAreSecurelyProtected',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get cardNumber {
    return Intl.message(
      'Card number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expire date`
  String get monthYear {
    return Intl.message(
      'Expire date',
      name: 'monthYear',
      desc: '',
      args: [],
    );
  }

  /// `Bind`
  String get bind {
    return Intl.message(
      'Bind',
      name: 'bind',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Uzbek`
  String get uzb {
    return Intl.message(
      'Uzbek',
      name: 'uzb',
      desc: '',
      args: [],
    );
  }

  /// `User Agreements`
  String get userAgreements {
    return Intl.message(
      'User Agreements',
      name: 'userAgreements',
      desc: '',
      args: [],
    );
  }

  /// `Data processing`
  String get dataProcessing {
    return Intl.message(
      'Data processing',
      name: 'dataProcessing',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get rus {
    return Intl.message(
      'Russian',
      name: 'rus',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get eng {
    return Intl.message(
      'English',
      name: 'eng',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Uzbekistan`
  String get uzbekistan {
    return Intl.message(
      'Uzbekistan',
      name: 'uzbekistan',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get webSite {
    return Intl.message(
      'Website',
      name: 'webSite',
      desc: '',
      args: [],
    );
  }

  /// `For cooperation`
  String get forCooperation {
    return Intl.message(
      'For cooperation',
      name: 'forCooperation',
      desc: '',
      args: [],
    );
  }

  /// `Developed by the company`
  String get developedByTheCompany {
    return Intl.message(
      'Developed by the company',
      name: 'developedByTheCompany',
      desc: '',
      args: [],
    );
  }

  /// `Application version`
  String get applicationVersion {
    return Intl.message(
      'Application version',
      name: 'applicationVersion',
      desc: '',
      args: [],
    );
  }

  /// `take`
  String get take {
    return Intl.message(
      'take',
      name: 'take',
      desc: '',
      args: [],
    );
  }

  /// `return`
  String get powerBankReturn {
    return Intl.message(
      'return',
      name: 'powerBankReturn',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `First hour`
  String get firstHour {
    return Intl.message(
      'First hour',
      name: 'firstHour',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hours {
    return Intl.message(
      'hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `day`
  String get day {
    return Intl.message(
      'day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `This is not vending`
  String get thisIsNotVending {
    return Intl.message(
      'This is not vending',
      name: 'thisIsNotVending',
      desc: '',
      args: [],
    );
  }

  /// `Therefore, we cannot issue a power bank. Checking if everything is correct: our name should be on the counter`
  String get thereforeWeCannotIssuePowerBank {
    return Intl.message(
      'Therefore, we cannot issue a power bank. Checking if everything is correct: our name should be on the counter',
      name: 'thereforeWeCannotIssuePowerBank',
      desc: '',
      args: [],
    );
  }

  /// `Fine`
  String get fine {
    return Intl.message(
      'Fine',
      name: 'fine',
      desc: '',
      args: [],
    );
  }

  /// `Scan the QR code at`
  String get scanTheQrCodeAt {
    return Intl.message(
      'Scan the QR code at',
      name: 'scanTheQrCodeAt',
      desc: '',
      args: [],
    );
  }

  /// `Can't scan QR code?`
  String get cantScanQrCode {
    return Intl.message(
      'Can\'t scan QR code?',
      name: 'cantScanQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code below the QR code`
  String get enterCodeBelowTheQrCode {
    return Intl.message(
      'Enter the code below the QR code',
      name: 'enterCodeBelowTheQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 6-digit code that is written on the station.`
  String get enterDigitCodeThatIsWrittenOnStation {
    return Intl.message(
      'Enter the 6-digit code that is written on the station.',
      name: 'enterDigitCodeThatIsWrittenOnStation',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR code`
  String get scanQrCode {
    return Intl.message(
      'Scan QR code',
      name: 'scanQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Rent`
  String get rents {
    return Intl.message(
      'Rent',
      name: 'rents',
      desc: '',
      args: [],
    );
  }

  /// `Station Information`
  String get stationInformation {
    return Intl.message(
      'Station Information',
      name: 'stationInformation',
      desc: '',
      args: [],
    );
  }

  /// `Cabinet ID`
  String get cabinetId {
    return Intl.message(
      'Cabinet ID',
      name: 'cabinetId',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `Payment Information`
  String get paymentInformation {
    return Intl.message(
      'Payment Information',
      name: 'paymentInformation',
      desc: '',
      args: [],
    );
  }

  /// `What happens if you do not return the bank?`
  String get whatHappensIfUouDoNotReturnBank {
    return Intl.message(
      'What happens if you do not return the bank?',
      name: 'whatHappensIfUouDoNotReturnBank',
      desc: '',
      args: [],
    );
  }

  /// `Rent now`
  String get rentNow {
    return Intl.message(
      'Rent now',
      name: 'rentNow',
      desc: '',
      args: [],
    );
  }

  /// `Charge and enjoy using.`
  String get chargeAndEnjoyUsing {
    return Intl.message(
      'Charge and enjoy using.',
      name: 'chargeAndEnjoyUsing',
      desc: '',
      args: [],
    );
  }

  /// `Powerbank rented`
  String get powerBankRented {
    return Intl.message(
      'Powerbank rented',
      name: 'powerBankRented',
      desc: '',
      args: [],
    );
  }

  /// `An error has occurred`
  String get errorHasOccurred {
    return Intl.message(
      'An error has occurred',
      name: 'errorHasOccurred',
      desc: '',
      args: [],
    );
  }

  /// `You must have at least 10,000 UZS in your account for rent.`
  String get youMustHaveAtLeastInYourAccountForRent {
    return Intl.message(
      'You must have at least 10,000 UZS in your account for rent.',
      name: 'youMustHaveAtLeastInYourAccountForRent',
      desc: '',
      args: [],
    );
  }

  /// `route`
  String get route {
    return Intl.message(
      'route',
      name: 'route',
      desc: '',
      args: [],
    );
  }

  /// `meter`
  String get meter {
    return Intl.message(
      'meter',
      name: 'meter',
      desc: '',
      args: [],
    );
  }

  /// `The expiration date is incorrect`
  String get expirationDateIsIncorrect {
    return Intl.message(
      'The expiration date is incorrect',
      name: 'expirationDateIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `There is nothing here yet`
  String get thereIsNothingHereYet {
    return Intl.message(
      'There is nothing here yet',
      name: 'thereIsNothingHereYet',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Place of rent`
  String get placeOfRent {
    return Intl.message(
      'Place of rent',
      name: 'placeOfRent',
      desc: '',
      args: [],
    );
  }

  /// `How to rent a power bank?`
  String get howToRentPowerBank {
    return Intl.message(
      'How to rent a power bank?',
      name: 'howToRentPowerBank',
      desc: '',
      args: [],
    );
  }

  /// `Lacks`
  String get lacks {
    return Intl.message(
      'Lacks',
      name: 'lacks',
      desc: '',
      args: [],
    );
  }

  /// `To open with`
  String get opening {
    return Intl.message(
      'To open with',
      name: 'opening',
      desc: '',
      args: [],
    );
  }

  /// `You have a charger in use!`
  String get youHaveChargerInUse {
    return Intl.message(
      'You have a charger in use!',
      name: 'youHaveChargerInUse',
      desc: '',
      args: [],
    );
  }

  /// `Working hours`
  String get workingHours {
    return Intl.message(
      'Working hours',
      name: 'workingHours',
      desc: '',
      args: [],
    );
  }

  /// `Open from`
  String get open {
    return Intl.message(
      'Open from',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `to`
  String get close {
    return Intl.message(
      'to',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Go out`
  String get goOut {
    return Intl.message(
      'Go out',
      name: 'goOut',
      desc: '',
      args: [],
    );
  }

  /// `Disabled`
  String get disabled {
    return Intl.message(
      'Disabled',
      name: 'disabled',
      desc: '',
      args: [],
    );
  }

  /// `Sorry`
  String get sorry {
    return Intl.message(
      'Sorry',
      name: 'sorry',
      desc: '',
      args: [],
    );
  }

  /// `The cabinet is in abnormal state and cannot be rented`
  String get stationStatusAbnormal {
    return Intl.message(
      'The cabinet is in abnormal state and cannot be rented',
      name: 'stationStatusAbnormal',
      desc: '',
      args: [],
    );
  }

  /// `Cancellation`
  String get cancellation {
    return Intl.message(
      'Cancellation',
      name: 'cancellation',
      desc: '',
      args: [],
    );
  }

  /// `station`
  String get station {
    return Intl.message(
      'station',
      name: 'station',
      desc: '',
      args: [],
    );
  }

  /// `mm/yy`
  String get expireDate {
    return Intl.message(
      'mm/yy',
      name: 'expireDate',
      desc: '',
      args: [],
    );
  }

  /// `You're not online`
  String get youAreNotOnline {
    return Intl.message(
      'You\'re not online',
      name: 'youAreNotOnline',
      desc: '',
      args: [],
    );
  }

  /// `Make sure your phone is connected to the internet.`
  String get makeSureYourPhoneIsConnectedInternet {
    return Intl.message(
      'Make sure your phone is connected to the internet.',
      name: 'makeSureYourPhoneIsConnectedInternet',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `You have debt`
  String get youHaveDebt {
    return Intl.message(
      'You have debt',
      name: 'youHaveDebt',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get areYouSureYouWantLogOut {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'areYouSureYouWantLogOut',
      desc: '',
      args: [],
    );
  }

  /// `We select a charged power bank`
  String get weSelectChargedPowerBank {
    return Intl.message(
      'We select a charged power bank',
      name: 'weSelectChargedPowerBank',
      desc: '',
      args: [],
    );
  }

  /// `Contact the Qwat call center if your account has been blocked for some reason!`
  String get yourAccountBeenBlocked {
    return Intl.message(
      'Contact the Qwat call center if your account has been blocked for some reason!',
      name: 'yourAccountBeenBlocked',
      desc: '',
      args: [],
    );
  }

  /// `An error has occurred. Please try again later`
  String get errorText {
    return Intl.message(
      'An error has occurred. Please try again later',
      name: 'errorText',
      desc: '',
      args: [],
    );
  }

  /// `Tap settings button > Settings > Permissions, and turn Location on.`
  String get openAppSettings {
    return Intl.message(
      'Tap settings button > Settings > Permissions, and turn Location on.',
      name: 'openAppSettings',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Please enable your GPS to access location-based features.`
  String get locationSettings {
    return Intl.message(
      'Please enable your GPS to access location-based features.',
      name: 'locationSettings',
      desc: '',
      args: [],
    );
  }

  /// `Bonuses`
  String get bonuses {
    return Intl.message(
      'Bonuses',
      name: 'bonuses',
      desc: '',
      args: [],
    );
  }

  /// `Share a link and get bonuses`
  String get shareALinkAndGetBonuses {
    return Intl.message(
      'Share a link and get bonuses',
      name: 'shareALinkAndGetBonuses',
      desc: '',
      args: [],
    );
  }

  /// `Enter promo code and get bonuses`
  String get enterPromoCodeAndGetBonuses {
    return Intl.message(
      'Enter promo code and get bonuses',
      name: 'enterPromoCodeAndGetBonuses',
      desc: '',
      args: [],
    );
  }

  /// `Promo code`
  String get promoCode {
    return Intl.message(
      'Promo code',
      name: 'promoCode',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Install the app through the link and get bonuses`
  String get installAppAndGetBonuses {
    return Intl.message(
      'Install the app through the link and get bonuses',
      name: 'installAppAndGetBonuses',
      desc: '',
      args: [],
    );
  }

  /// `Not enough points to create a lease`
  String get notEnoughPointsToCreateLease {
    return Intl.message(
      'Not enough points to create a lease',
      name: 'notEnoughPointsToCreateLease',
      desc: '',
      args: [],
    );
  }

  /// `Invite your friends to the app and earn points`
  String get inviteYourFriendsToAppAndEarnPoints {
    return Intl.message(
      'Invite your friends to the app and earn points',
      name: 'inviteYourFriendsToAppAndEarnPoints',
      desc: '',
      args: [],
    );
  }

  /// `Select a card for subsequent debiting`
  String get selectCardForSubsequentDebiting {
    return Intl.message(
      'Select a card for subsequent debiting',
      name: 'selectCardForSubsequentDebiting',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully activated the promo code`
  String get youHaveSuccessfullyActivatedPromoCode {
    return Intl.message(
      'You have successfully activated the promo code',
      name: 'youHaveSuccessfullyActivatedPromoCode',
      desc: '',
      args: [],
    );
  }

  /// `This promo code does not exist or has already been used`
  String get thisPromoCodeDoesNotExistOrHasAlreadyBeenUsed {
    return Intl.message(
      'This promo code does not exist or has already been used',
      name: 'thisPromoCodeDoesNotExistOrHasAlreadyBeenUsed',
      desc: '',
      args: [],
    );
  }

  /// `year`
  String get year {
    return Intl.message(
      'year',
      name: 'year',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uz'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
