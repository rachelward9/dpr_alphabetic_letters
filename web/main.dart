// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

List word = [
  "a",
  "z",
  "l",
  "m",
  "o",
  "s",
  "t"
];

void main() {
  querySelector('#orig').text = '$word';
  checkAlphabetic(word);

}

void checkAlphabetic(List<String> l) {
  List<String> newL = [];
  newL.addAll(l);

  // Alphabetize the letters in the word.
  newL.sort();

  querySelector("#alphabetized").text = "$newL";

  for (int i = 0; i <= l.length; i++) {
    if (newL[i] != word[i]) {
      querySelector("#result").text = "NOT IN ORDER";
      return;
    }
    else {
      querySelector("#result").text = "IN ORDER";
    }
  }
}