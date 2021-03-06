import 'package:flutter/material.dart';
import 'package:foodism/screens/chefs_screen.dart';
import 'package:foodism/screens/restaurants_screen.dart';
import 'package:foodism/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FOODISM',
          style: TextStyle(
              fontFamily: "BalsamiqSans",
              color: Theme.of(context).accentColor,
              fontSize: 40),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Theme.of(context).accentColor),
      ),
      drawer: AppDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Spacer(),
          Text(
            '¿Qué te apetece?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Flexible(
            child: Card(
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Comida',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'a domicilio',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(RestaurantsScreen.routeName);
                },
              ),
              color: Color(0xAAF3B92F),
              elevation: 0,
              margin: new EdgeInsets.symmetric(horizontal: 20.0),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Flexible(
            child: Card(
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Chef',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'a domicilio',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(ChefsScreen.routeName);
                },
              ),
              color: Color(0xAAF3B92F),
              elevation: 0,
              margin: new EdgeInsets.symmetric(horizontal: 20.0),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
