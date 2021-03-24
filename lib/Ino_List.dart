

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

import 'model/Ino_Data.dart';

class Ino_List {
  static List<Ino_Data> getMovies() {
    return [
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 1',
          amt: '₹1,00,300.00',
      st:'OVERDUE'
      ),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 2',
          amt:
          '₹1,00,300.00',
          st:'PAID'
          ),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 3',
          amt:
          '₹1,00,300.00',
          st:'PAID'
         ),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 4',
          amt:
          '₹1,00,300.00',
          st:'OVERDUE'),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 5',
          amt:
          '₹1,00,300.00',
          st:'PAID'),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 6',
          amt:
          '₹1,00,300.00',
          st:'PAID'),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 7',
          amt:
          '₹1,00,300.00',
          st:'PAID'),
      Ino_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name 8',
          amt:
          '₹1,00,300.00',
          st:'OVERDUE'),];
  }
}