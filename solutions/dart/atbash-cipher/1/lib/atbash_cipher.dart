class AtbashCipher {
  Map<String, String> atbashMap = {
    'A': 'Z',
    'B': 'Y',
    'C': 'X',
    'D': 'W',
    'E': 'V',
    'F': 'U',
    'G': 'T',
    'H': 'S',
    'I': 'R',
    'J': 'Q',
    'K': 'P',
    'L': 'O',
    'M': 'N',
    'N': 'M',
    'O': 'L',
    'P': 'K',
    'Q': 'J',
    'R': 'I',
    'S': 'H',
    'T': 'G',
    'U': 'F',
    'V': 'E',
    'W': 'D',
    'X': 'C',
    'Y': 'B',
    'Z': 'A',
    'a': 'z',
    'b': 'y',
    'c': 'x',
    'd': 'w',
    'e': 'v',
    'f': 'u',
    'g': 't',
    'h': 's',
    'i': 'r',
    'j': 'q',
    'k': 'p',
    'l': 'o',
    'm': 'n',
    'n': 'm',
    'o': 'l',
    'p': 'k',
    'q': 'j',
    'r': 'i',
    's': 'h',
    't': 'g',
    'u': 'f',
    'v': 'e',
    'w': 'd',
    'x': 'c',
    'y': 'b',
    'z': 'a',
  };
  String encode(String plainText) {
    String cypherText = "";
    for (String char in plainText.split('')) {
      cypherText += atbashMap[char] ?? char;
    }
    return cypherText;
  }

  String decode(String cypherText) {
    String plainText = "";
    for (var char in cypherText.split('')) {
      plainText += atbashMap[char] ?? char;
    }
    return plainText;
  }
}

void main(List<String> args) {
  var pt1 = AtbashCipher().decode("c123b vh");
  print(pt1);
  var cT1 = AtbashCipher().encode("thequickbrownfoxjumpsoverthelazydog");
  print(cT1);
}
