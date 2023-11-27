import 'package:flutter/cupertino.dart';

class alllogic extends ChangeNotifier{

  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  TextEditingController input3 = TextEditingController();

  var myrealresult = "";

   Convert(){
    int tk1 = int.parse(input1.text);
    int tk2 = int.parse(input2.text);
    int tk3 = int.parse(input3.text);

    var finalresult = tk1+tk2+tk3;
    var persent = finalresult*20/100;

    var allres = finalresult- persent;

    var stringbd = allres.toString();

      List<String> ENG = ['1','2','3','4','5','6','7','8','9',"0"];
      List<String> BNG = ['১','২','৩','৪','৫','৬','৭','৮','৯',"০",];

      for(int a=0; a<BNG.length; a++){
        stringbd = stringbd.toString().replaceAll(ENG[a],BNG[a]);
      }

      myrealresult = stringbd;

    notifyListeners();

  }

}