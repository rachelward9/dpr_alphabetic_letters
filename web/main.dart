import 'dart:html';

List<String> words = [
"billowy",
"biopsy",
"chinos",
"defaced",
"chintz",
"sponged",
"bijoux",
"abhors",
"fiddle",
"begins",
"chimps",
"wronged"
];

void main() {
  querySelector('#orig').text = '${words.last}';
  judgeList(words);
}

void judgeList(List w) {
  List<String> wList = [];
  wList.addAll(w);

  for (String word in wList) {
    checkAlphabetic(word);
  }
}

void checkAlphabetic(String word) {
  // Break the word into a list of letters.
  List<String> letters = word.split("");

  // Alphabetize the letters.
  letters.sort();

  // Compare word to the sorted and re-stringed word to see if it changed.
  (word == letters.join()) ? querySelector("#result").text = "IN ORDER" : querySelector("#result").text = "NOT IN ORDER";

  // Show the sorted version of the word.
  querySelector("#alphabetized").text = "${letters.join("")}";
}