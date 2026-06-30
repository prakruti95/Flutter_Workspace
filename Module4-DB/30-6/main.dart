import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void main()
{
  runApp(MaterialApp(home: Paymentex()));
}


class Paymentex extends StatefulWidget
{
  const Paymentex({super.key});

  @override
  State<Paymentex> createState() => _PaymentexState();
}

class _PaymentexState extends State<Paymentex>
{
  late Razorpay _razorpay;

  @override
  void initState()
  {
    _razorpay = Razorpay();

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("Payment"),),
      body: Center
        (
        child: ElevatedButton(onPressed: () {
          opencheckout();
        }, child: Text("Pay Now")),
      ),
    );
  }

  void opencheckout()
  {
    var options =
    {
      'key': 'rzp_test_Rr3rxC3krXVmE2',
      'amount': 10000,
      // amount in the smallest currency unit (e.g., cents for USD)
      'name': 'Your Company Name',
      'description': 'Product description',
      'prefill': {'contact': '1234567890', 'email': 'test@example.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try
    {
      _razorpay.open(options);
    }
    catch(e)
    {
      debugPrint('Error: ${e.toString()}');
    }
  }

  _handlePaymentSuccess(PaymentSuccessResponse response)
  {
    print("Payment Success: ${response.paymentId}");
  }

  _handlePaymentError(PaymentFailureResponse response)
  {
    print("Payment Error: ${response.code} - ${response.message}");
  }

  _handleExternalWallet(ExternalWalletResponse response)
  {
    print("External Wallet: ${response.walletName}");
  }
}
