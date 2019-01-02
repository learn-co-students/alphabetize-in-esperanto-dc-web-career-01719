require 'pry'


def alphabetize(arr)
esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
arr.sort_by {|phrase|
phrase.split('').map {|letter|
esperanto_alphabet.index(letter)
}
}
end