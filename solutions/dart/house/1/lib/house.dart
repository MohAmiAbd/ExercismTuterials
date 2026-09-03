class House {
  final List<String> _sentences = [
    'the house that Jack built.',
    'the malt that lay in ',
    'the rat that ate ',
    'the cat that killed ',
    'the dog that worried ',
    'the cow with the crumpled horn that tossed ',
    'the maiden all forlorn that milked ',
    'the man all tattered and torn that kissed ',
    'the priest all shaven and shorn that married ',
    'the rooster that crowed in the morn that woke ',
    'the farmer sowing his corn that kept ',
    'the horse and the hound and the horn that belonged to ',
  ];

  String recite(int startVerse, int endVerse) {
    String result = "";
    if (startVerse == endVerse) {
      result = "This is ";
      for (int i = startVerse; i > 0; i--) result += _sentences[i - 1];
    } else {
      int temp = endVerse - startVerse + 1;
      for (int x = temp; x > 0; x--) {
        result += "This is ";
        for (int i = startVerse; i > 0; i--) result += _sentences[i - 1];
        startVerse++;
        if (x == 1) break;
        else result += "\n";
      }
    }
    return result;
  }
}
