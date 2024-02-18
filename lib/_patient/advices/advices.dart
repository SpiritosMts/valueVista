import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_cr/manager/myUi.dart';

import '../../manager/myVoids.dart';
import '../../manager/styles.dart';
import '../home/patientHome_ctr.dart';

class Advices extends StatefulWidget {
  const Advices({Key? key}) : super(key: key);

  @override
  State<Advices> createState() => _AdvicesState();
}

class _AdvicesState extends State<Advices> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Daily Advices"),
          automaticallyImplyLeading:false,
          centerTitle: true,
          backgroundColor: appbarColor,
          elevation: 10,

        ),
        body: backGroundTemplate(
          child: GetBuilder<PatientHomeCtr>(
            builder: (_)=>(ptCtr.advices.isNotEmpty)
                ? ListView.builder(
                //itemExtent: 130,
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                shrinkWrap: true,
                itemCount: ptCtr.advices.length,
                itemBuilder: (BuildContext context, int index) {
                  //String key = ptCtr.advices.keys.elementAt(index);
                  bool newAdvice = false;
                  if(index == 0) newAdvice = true;
                  return adviceCard(ptCtr.advices[index],newAdvice: newAdvice);
                }
            ):Center(

                child:Text('no advices yet', textAlign: TextAlign.center, style: GoogleFonts.indieFlower(
                  textStyle:  TextStyle(
                      fontSize: 23  ,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),
                ))
            ),

          ),
        )


    );
  }
}
