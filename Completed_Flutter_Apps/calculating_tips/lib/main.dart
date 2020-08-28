import 'package:calculating_tips/util/hexColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TipCalculatorPage(),));
}
class TipCalculatorPage extends StatefulWidget {
  @override
  _TipCalculatorPageState createState() => _TipCalculatorPageState();
}

class _TipCalculatorPageState extends State<TipCalculatorPage> {
  int _tipPercentage=0;
  int _personCount=1;
  double _billAmount=0.0;

  Color _green = HexColor("#4CAF50");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
                width: 150,
                height: 150,
                decoration:BoxDecoration(
                  color: _green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total Per Person",style: TextStyle(
                        color: _green,
                        fontSize: 18,
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("\$${calculateTotalPerPerson(_billAmount, _personCount,_tipPercentage)}",style: TextStyle(
                          color: _green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),
                      ),
                    ],
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(12),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.blueGrey.shade100,
                    style: BorderStyle.solid,
                  )
                ),
                child:Column(
                  children: [
                    TextField(keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: _green),
                      decoration: InputDecoration(hintText:"Bill Amount: ",
                      ),
                      onChanged: (String value){
                      try{
                        _billAmount = double.parse(value);
                      }catch(exception){
                        _billAmount =0.0;

                      }
                      },
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Split",style: TextStyle(
                          color: Colors.grey.shade700,
                        ),),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(_personCount>1){
                                    _personCount--;
                                  }else{
                                    //nothing
                                  }
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: _green.withOpacity(0.2)
                                ),
                                child: Center(
                                  child: Text("-",style: TextStyle(
                                    color: _green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  ),
                                ),
                              ),
                            ),
                            Text("$_personCount",style: TextStyle(
                              color: _green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _personCount++;
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: _green.withOpacity(0.2)
                                ),
                                child: Center(
                                  child: Text("+",style: TextStyle(
                                    color: _green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tip",style: TextStyle(
                          color: Colors.grey.shade700,
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text("\$ ${(calculateTotalTip(_billAmount, _personCount, _tipPercentage)).toStringAsFixed(2)}",style: TextStyle(
                            color: _green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    //Slider
                    Column(
                      children: [
                        Text("$_tipPercentage%",style: TextStyle(
                          color: _green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        Slider(
                          min: 0,
                          max: 100,
                          activeColor: _green,
                          inactiveColor: Colors.grey,
//                          divisions: 10,
                          value: _tipPercentage.toDouble(),
                          onChanged: (double newValue){
                            setState(() {
                              _tipPercentage=newValue.round();
                            });
                          },
                        )
                      ],
                    )

                  ],
                )
            ),
          ],
        ),
      ),

    );
  }
  calculateTotalPerPerson(double billAmount,int SplitBy,int tipPercentage){
    var totalPerPerson = (calculateTotalTip(billAmount, SplitBy, tipPercentage) +billAmount)/SplitBy;
    return totalPerPerson.toStringAsFixed(2);

  }
  calculateTotalTip(double billAmount,int SplitBy,int tipPercentage){
    double totalTip=0.0;
    if(billAmount<0 || billAmount.toString().isEmpty || billAmount ==null){
      //nothing to do
    }else{
      totalTip =(billAmount*tipPercentage)/100;
    }
    return totalTip..toStringAsFixed(2);
  }

}