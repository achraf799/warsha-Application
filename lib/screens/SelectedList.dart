import 'package:flutter/material.dart';

class SelectedList extends StatefulWidget {
  final String name;
  final List<String> list;

  SelectedList({required this.name, required this.list});

  @override
  _SelectedListState createState() => _SelectedListState();
}

class _SelectedListState extends State<SelectedList> {
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFE9E5E4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.50),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue!;
            });
          },
          items: widget.list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                child: Row(
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.48,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 10),
                    Opacity(
                      opacity: 0.50,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('path_to_down_icon'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
