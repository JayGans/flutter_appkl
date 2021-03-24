import 'package:flutter/material.dart';
import 'package:flutter_appkl/model/Trans_Data.dart';

class Trans_List {
  static List<Trans_Data> getMovies() {
    return [
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt: '₹1,00,300.00',
      st:'OVERDUE'
      ),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'PAID'
          ),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'PAID'
         ),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'OVERDUE'),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'PAID'),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'PAID'),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'PAID'),
      Trans_Data(
          invo_id: 'NV-000032',
          invo_dt: '03 Sep 2020',
          client_nm: 'Client Company Name',
          amt:
          '₹1,00,300.00',
          st:'OVERDUE'),];
  }
}