import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:bmi_calc/card_icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEA1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender;

  void _selectGender(Gender gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: _selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardIconContent(
                        iconData: FontAwesomeIcons.mars, label: 'MALE'),
                    onPress: () => _selectGender(Gender.male),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: _selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardIconContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPress: () => _selectGender(Gender.female),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
/*
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
*/
    );
  }
}
