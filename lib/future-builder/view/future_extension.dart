import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

extension FutureExtension<T> on Future {
  Widget toBuild<T>({Widget Function(T data) onSucces, Widget onError}) {
    return FutureBuilder<T>(
      future: this,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.waiting:
            return _centerLoading;
          case ConnectionState.done:
            if (snapshot.hasData) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: onSucces(snapshot.data),
              );
            } else {
              if (onError != null) return onError;
              final errorModel = snapshot.error as DioError;
              return Center(child: Text(errorModel.message));
            }

            break;
          default:
            return _networkNotFound;
        }
      },
    );
  }

  LottieBuilder get _networkNotFound => Lottie.network("https://assets9.lottiefiles.com/temp/lf20_B7BO04.json");

  Center get _centerLoading =>
      Center(child: Lottie.network("https://assets6.lottiefiles.com/packages/lf20_pMMQPe.json"));
}
