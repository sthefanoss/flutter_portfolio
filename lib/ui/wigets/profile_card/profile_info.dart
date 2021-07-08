import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sthefano Soares Schiavon',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 2),
        Text(
          'Desenvolvedor mobile Flutter @AtlasTechologies',
          style: Theme.of(context).textTheme.overline,
        ),
        Text(
          'Estudante de Engenharia Elétrica @IFSul',
          style: Theme.of(context).textTheme.overline,
        ),
        SizedBox(height: 8),
        Text(
          '25 anos',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white70),
        ),
        Text(
          'Pelotas - RS',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white70),
        ),
        SelectableText(
          'sthefanoss@gmail.com',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white70),
        ),
        Spacer(),
        Text(
          'Sthefano é um nerd que gosta de programação, jogos e matemática. '
          ' É bem provavel que ele esteja estudando, trabalhando, jogando ou desenvolvendo projetos pessoais.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 12, color: Colors.white70),
        )
      ],
    );
  }
}
