import 'package:disenios/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                porcentaje += 10;

                if (porcentaje > 100) {
                  porcentaje = 0;
                }
              });
            }),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CurtomRadialProgress(porcentaje: porcentaje, color: Colors.blue),
                CurtomRadialProgress(porcentaje: porcentaje, color: Colors.red),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CurtomRadialProgress(porcentaje: porcentaje, color: Colors.purple),
                CurtomRadialProgress(porcentaje: porcentaje, color: Colors.green),
              ],
            ),
          ],
        ));
  }
}

class CurtomRadialProgress extends StatelessWidget {

  final Color color;

  const CurtomRadialProgress({
    @required this.porcentaje, 
    @required this.color,
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      child: RadialProgress(
          porcentaje: this.porcentaje,
          colorPrimario: this.color,
          colorSecundario: Colors.black26,
          grosorPrimario: 10.0,
          grosorSecundario: 8.0),
    );
  }
}
