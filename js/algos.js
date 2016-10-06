function Longest_word(word_1, word_2, word_3){
  console.log('Searching for longest word...');
  var words = [word_1, word_2, word_3];

  var length = 0;
  var longest;

  for (var i = 0; i < words.length; i++){
    if(words[i].length > length){
      var word = words[i].length;
      longest = words[i];
    }
  }
  console.log(longest);
}

var Words = new Longest_word('Hippo', 'Giraffe', 'Elephant');