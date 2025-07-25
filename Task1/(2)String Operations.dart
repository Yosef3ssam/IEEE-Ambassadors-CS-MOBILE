void main (){
  String word1 = 'Hello';
  String word2 = 'World';
  String fullword = "$word1 $word2";

  print('Concatenated: $word1 $word2');
  print('Length: ${fullword.length}');

  print('Substring: ${fullword.substring(0,7)}');

  print('Uppercase: ${fullword.toUpperCase()}');

  print('Lowercase: ${fullword.toLowerCase()}');

}