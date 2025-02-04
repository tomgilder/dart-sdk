// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer_utilities/check/check.dart';

extension IsExtension<T> on CheckTarget<T> {
  CheckTarget<U> hasExactType<U extends T>() {
    final value = this.value;
    if (value.runtimeType == U) {
      return nest(value as U, (_) => 'is of type $U');
    } else {
      fail('is not of type $U');
    }
  }

  CheckTarget<U> isA<U extends T>() {
    final value = this.value;
    if (value is U) {
      return nest(value, (_) => 'is of type $U');
    } else {
      fail('is not of type $U');
    }
  }
}
