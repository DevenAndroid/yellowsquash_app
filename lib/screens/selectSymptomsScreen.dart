import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/apptheme.dart';

class SelectSymptomsScreen extends StatefulWidget {
  const SelectSymptomsScreen({super.key});

  @override
  State<SelectSymptomsScreen> createState() => _SelectSymptomsScreenState();
}

class _SelectSymptomsScreenState extends State<SelectSymptomsScreen> {
  bool showValidation = false;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9D121),
        title: Text(
          'Select Symptoms',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.blackcolor),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (index,context){
          return       Row(
            children: [
              Transform.scale(
                scale: 1.1,
                child: Theme(
                  data: ThemeData(
                      unselectedWidgetColor: showValidation == false ? const Color(0xFF64646F) : Colors.red),
                  child: Checkbox(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: value,
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      activeColor: const Color(0xFF355EB3),
                      onChanged: (newValue) {
                        setState(() {
                          value = newValue!;
                          setState(() {});
                        });
                      }),
                ),
              ),
              Expanded(
                child: Text(
                  'Fatigue',
                  style: GoogleFonts.poppins(fontSize: 14, color: AppTheme.blackcolor, fontWeight: FontWeight.w400),
                ),
              )
            ],
          );

      }),
    );
  }
}
