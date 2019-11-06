$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  row_index = 0 
  dir_hash = {}
  final_hash = {}
  
  while row_index < directors_database.length do
    dir_gross = 0
    column_item = 0 
    
    while column_item < directors_database[row_index][:movies].length do
      
        dir_gross += directors_database[row_index][:movies][column_item][:worldwide_gross]  
      
     column_item += 1
    
    end

    dir_hash = {directors_database[row_index][:name] => dir_gross}
    final_hash = final_hash.merge(dir_hash)
    row_index += 1
  end

  return final_hash
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil
end
