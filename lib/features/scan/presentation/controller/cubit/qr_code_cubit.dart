import 'package:aast_restuarant/features/scan/presentation/controller/cubit/qr_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeCubit extends Cubit<QrCodeState> {
  QrCodeCubit() : super(QrCodeInitial());
  static QrCodeCubit get(context) => BlocProvider.of(context);
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  Barcode? result;
  QRViewController? controller;

  void onQrViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanDate) {
      result = scanDate;
      emit(QrCodeScanned());
    });
  }
}
