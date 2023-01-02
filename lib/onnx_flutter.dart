import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:image/image.dart';
// import 'dart:ffi' as ffi;

import 'generated_bindings.dart';

void main() {
  final image = decodeImage(
    File('image.png').readAsBytesSync(),
  )!;

  print(image.data.map((e) {
    return {
      'red': (e >> 16) & 0x0FF,
      'green': (e >> 8) & 0x0FF,
      'blue': e & 0x0FF,
    };
  }).toList());

  // final newImage = Image.fromBytes(
  //   image.width,
  //   image.height,
  //   image.data//.map((e) => (e == 4278190080) ? 0 : 1).toList(),
  // );

  // PngDecoder().info
  // print(image.data);

  // print(
  //     '(${image.width}, ${image.height}), size=${image.width * image.height}');
  // File('image.png').writeAsBytesSync(encodePng(image));

  // print(image.getBytes(format: Format.));
  // final lib = NativeLibrary(DynamicLibrary.open(
  //   r'C:\Users\arish\OpenSource\onnx_wrapper\cmake-build-debug\onnx_wrapper.dll',
  // ));
  //
  // final api = lib.getApi();
  // final session = lib.createSession(
  //     api,
  //     "C:\\Users\\arish\\Downloads\\squeezenet1.0-12-int8.onnx"
  //         .toNativeUtf16().cast<WChar>());

  // print(session.ref.input_size);
  // print(session.ref.output_size);
  // print(session.ref.input_names.elementAt(0).cast<Utf8>().toDartString());
  // final Object Function() funcNativeStart = lib
  //     .lookup<NativeFunction<Pointer Function()>>("getApi")
  //     .asFunction();
  //
  // funcNativeStart();
}
