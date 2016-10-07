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
};

var Words = new Longest_word('Hippo', 'Giraffe', 'Elephant');


function getrandominteger(min, max){
  return Math.random() * (max - min) + min;
}


alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');

integer = getrandominteger(1, 10)

function Array_builder(integer){
  var arr = [];
  var letters = alphabet;
  for (var i = 0; i < integer; i++){
    arr.push(letters[i])
    console.log(arr)
  }
}
console.log(Array_builder(integer));
