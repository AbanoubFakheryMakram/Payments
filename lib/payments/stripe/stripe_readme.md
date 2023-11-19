# Stripe payment

Stripe is an Indian payment platform
Support Cards, Google and Apple pay
Fees (2% for India, 3% for other countries)
It Support more than 40 countries [Not supported for Egypt yet (you can use it from Egypt but you will act as another country)]

## Getting Started

First of all you must create account through the blow link
- [https://dashboard.stripe.com/register]

You will be asked for name email, password and your country then you will need to verify your email
After that you will be asked for activating your account
You will be asked for multiple information like Business location, Type of business, 
                                                bank details (where the money will transfer to), Statement descriptor(Business name), etc....

You have an option to skip the previous step and by default your account will be testing account until you activate your account by providing the requested data
After that you will be navigated to your dashboard
From dashboard go to settings by clicking on settings icon
From Payments section click on Payment methods where you can determine the payment methods (Cards, Google and Apple pay) and by default all methods are enabled

After selecting your payment methods go back to the dashboard where you will see a button called Developers click on it
will open your console where you will see your [Publishable key] and [Secret key] the two keys you need while transactions

These the basics guide of creating your Stripe account, Of course you can expand your business as you need from your console
You can also follow the docs [https://stripe.com/docs/api]

## Getting Started In Flutter
PLATFORM: ANDROID, IOS, WEB
In your pubspec.yaml add this dependency [flutter_stripe: version] and some http calls handler like [http or dio]

Some specific requirements
# Android
Use Android 5.0 (API level 21) and above
Use Kotlin version 1.5.0 and above
Using an up-to-date Android gradle build tools version
Using FlutterFragmentActivity instead of FlutterActivity in MainActivity.kt
Rebuild the app, as the above changes don't update with hot reload

# IOS
platform :ios, '13.0'

## Let's start with Cards payment method

- step 0: init Stripe with publishable key
      Stripe.publishableKey = Publishable key;

- Step 1: make Intent
  - make api call to [https://api.stripe.com/v1/payment_intents] 
  - in the api headers add these [{
    'Authorization': 'Bearer Secret key',
    'Content-Type': 'application/x-www-form-urlencoded'
    }]
  - in the body add the amount and currency as your country selected in your console
    Map<String, dynamic> body = {
    'amount': amount,  // total amount
    'currency': currency,  // ex: INR
    };
  
- Step 2: init payment sheet
  - await Stripe.instance .initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentResponse!['client_secret'], //Gotten from payment intent response
        merchantDisplayName: 'any name you want like your business name',
    ))
    .then((value) {});
  
- Step 3: present payment sheet
  -  await Stripe.instance.presentPaymentSheet().then((value) {
       print("Payment Successfully");
     });