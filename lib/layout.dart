import 'package:flutter/material.dart';

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Praia de Jericoacoara – Jericoacoara',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Praias do Ceará que você deveria conhecer em suas férias',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('96'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Esta é uma das praias do Ceará ideal para todos os perfis de viajantes: '
        'para os que buscam uma bela paisagem e tranquilidade, aproveite para '
        'curtir o pôr do sol nas dunas, ao lado esquerdo da orla. Já para os '
        'esportistas e os baladeiros, prefira a região central da praia, '
        'ideal para a prática de Wind e kitesurfe, além da grande '
        'concentração de barzinhos.',
    softWrap: true,
  ),
);

Widget imageSection = Image.asset(
  'images/Praia-de-Jericoacoara.jpeg',
  width: 600,
  height: 240,
  fit: BoxFit.cover,
);
