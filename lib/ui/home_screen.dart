import 'dart:js' as js;
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';

import 'wigets/profile_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double widthBreakpoint = 640;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Portifólio'),
            actions: [
              SignInButton(
                Buttons.Facebook,
                mini: true,
                onPressed: () {
                  js.context.callMethod(
                      'open', ['https://www.facebook.com/sthefanoss']);
                },
              ),
              SizedBox(width: 8),
              SignInButton(
                Buttons.LinkedIn,
                mini: true,
                onPressed: () {
                  js.context.callMethod(
                      'open', ['https://www.linkedin.com/in/sthefanoss']);
                },
              ),
              SizedBox(width: 8),
              SignInButton(
                Buttons.GitHub,
                mini: true,
                onPressed: () {
                  js.context
                      .callMethod('open', ['https://github.com/sthefanoss']);
                },
              ),
              SizedBox(width: 8),
            ],
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  Divider(),
                  Text('Sobre'),
                  Divider(),
                  ProfileCard(width: constraints.maxWidth),
                  Divider(),
                  Text('Projetos'),
                  Divider(),
                  Flexible(
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text('Aplicativo Séries de Fourier'),
                          subtitle: Text(
                            'Programa para gerar gráficos das séries'
                            ' de fourier estudadas em cálculo avançado.',
                          ),
                          onTap: () {
                            js.context.callMethod('open',
                                ['https://sthefanoss.github.io/app/ifs']);
                          },
                        ),
                        ListTile(
                          title: Text('Aplicativo Curvas de Torque'),
                          subtitle: Text(
                            'Programa para gerar gráficos das curvas de torque'
                            ' de motores de indução trifásicos estudadas'
                            ' em conversão de energia.',
                          ),
                          onTap: () {
                            js.context.callMethod('open', [
                              'https://sthefanoss.github.io/app/torque_tri'
                            ]);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size.zero),
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              'open', ['https://br.freepik.com/fotos/fundo']);
                        },
                        child: Text(
                          'Fundo foto criado por evening_tao - br.freepik.com',
                          style: TextStyle(fontSize: 8, color: Colors.white54),
                        )),
                  ),
                ],
              );
            },
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
