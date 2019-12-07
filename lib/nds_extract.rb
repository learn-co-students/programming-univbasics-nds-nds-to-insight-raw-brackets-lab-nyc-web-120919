$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  pp directors_database
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  counter1 = 0
  while counter1 < directors_database.length do
	  counter2 = 0
	  total = 0
    while counter2 < directors_database[counter1][movies].length do
      total += directors_database[counter1][movies][counter2][3]
    end
    result[directors_database[counter1][name]] = total
	end

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  return result
end
