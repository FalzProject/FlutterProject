import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'No',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Nama Project',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Deskripsi',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Link Project',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Tanggal Pembuatan',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Update Terakhir',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Action',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('1')),
            DataCell(Text('Null')),
            DataCell(Text('Null')),
            DataCell(Text('Null')),
            DataCell(Text('Null')),
            DataCell(Text('Null')),
            DataCell(Text('Null')),
          ],
        ),
      ],
    );
  }
}
