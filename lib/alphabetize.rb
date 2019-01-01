
def alphabetize(arr)
  
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  ascii_chars = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]"
  
  #arr.sort_by { |alphabet| alphabet }
  
  arr.sort_by{|string| string.tr(alphabet, ascii_chars)}
  
end
