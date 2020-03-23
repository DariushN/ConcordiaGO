import 'package:concordia_go/blocs/bloc.dart';
import 'package:concordia_go/models/search_result_model.dart';
import 'package:concordia_go/services/outdoor_path_service.dart';
import 'package:concordia_go/utilities/application_constants.dart';
import 'package:concordia_go/widgets/component/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DirectionsSearch extends StatefulWidget {
  @override
  DirectionsSearchState createState() => DirectionsSearchState();
}

class DirectionsSearchState extends State<DirectionsSearch> {
  SearchResult startingPoint;
  SearchResult destination;
  TextEditingController _startTextController = TextEditingController();
  TextEditingController _destTextController = TextEditingController();

  @override
  Widget build(context) {
    var isSelected = [true, false, false, false];

    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state is SearchDirectionsState) {
          startingPoint = state.startingPoint != null ? state.startingPoint : startingPoint;
          destination = state.destination != null ? state.destination : destination;
          _startTextController.text = startingPoint?.name;
          _destTextController.text = destination?.name;
        }
      },
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchDirectionsState) {
            return Container(
              height: screenHeight / 3,
              color: concordiaRed,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        readOnly: true,
                        showCursor: false,
                        controller: _startTextController,
                        decoration: InputDecoration(
                          hintText: 'Choose starting point',
                          icon: Icon(
                            Icons.gps_fixed,
                            color: Colors.white,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fillColor: Colors.white,
                        ),
                        onTap: () {
                          BlocProvider.of<SearchBloc>(context).add(QueryChangeEvent('', SearchType.startingPoint));
                          FocusScope.of(context).requestFocus(focus);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        readOnly: true,
                        showCursor: false,
                        controller: _destTextController,
                        decoration: InputDecoration(
                          hintText: 'Choose destination',
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fillColor: Colors.white,
                        ),
                        onTap: () {
                          BlocProvider.of<SearchBloc>(context).add(QueryChangeEvent('', SearchType.destination));
                          FocusScope.of(context).requestFocus(focus);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ToggleButtons(
                      children: <Widget>[
                        Container(
                          width: screenWidth / 4,
                          child: Icon(
                            Icons.directions_walk,
                            size: screenWidth / 10,
                          ),
                        ),
                        Container(
                          width: screenWidth / 4,
                          child: Icon(
                            Icons.directions_car,
                            size: screenWidth / 10,
                          ),
                        ),
                        Container(
                          width: screenWidth / 4,
                          child: Icon(
                            Icons.directions_subway,
                            size: screenWidth / 10,
                          ),
                        ),
                        Container(
                          width: screenWidth / 4,
                          child: Icon(
                            Icons.directions_bus,
                            size: screenWidth / 10,
                          ),
                        ),
                      ],
                      onPressed: (index) {
                        for (int i = 0; i < isSelected.length; i++) {
                          if (i == index) {
                            isSelected[i] = true;
                          } else {
                            isSelected[i] = false;
                          }
                        }
                        BlocProvider.of<SearchBloc>(context)
                            .add(SearchDirectionsEvent(startingPoint: startingPoint, destination: destination));
                      },
                      isSelected: isSelected,
                      renderBorder: false,
                      color: Colors.white,
                      selectedColor: Colors.lightBlue,
                      fillColor: Colors.white,
                      highlightColor: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: screenWidth / 12,
                            ),
                            onPressed: () {
                              BlocProvider.of<SearchBloc>(context).add(EndSearchEvent());
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: RaisedButton.icon(
                            color: Colors.white,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            onPressed: () {
                              BlocProvider.of<SearchBloc>(context).add(EndSearchEvent());
                              OutdoorPathService.clearAll();
                              if (startingPoint != null && destination != null) {
                                BlocProvider.of<DirectionsBloc>(context).add(GetDirectionsEvent(
                                    startingPoint.coordinates, destination.coordinates, destination.name));
                              }
                            },
                            icon: Icon(
                              Icons.directions,
                              size: screenWidth / 12,
                            ),
                            label: Text(
                              'Go',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              height: 0,
            );
          }
        },
      ),
    );
  }
}
