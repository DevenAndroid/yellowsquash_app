import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Payment Methods',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Credit/ Debit Cards',
                        style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Pay via cards',
                        style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UPI',
                        style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Pay via a registered UPI ID',
                        style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallets',
                        style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Paytm, PhonePe, Amazon Pay & more',
                        style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Net Banking',
                        style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Select from a list of banks',
                        style: GoogleFonts.poppins(fontSize: 12, color: AppTheme.grayColor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
