$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_db = directors_database
  hash_result = Hash.new()
  
  dir_iterator = 0
  while dir_iterator < directors_db.size do
    director = directors_db[dir_iterator]
    
    total_grosses = 0 
    movies_array = director[:movies]
    movies_iterator = 0 
    
    while movies_iterator < movies_array.size do
      total_grosses += movies_array[movies_iterator][:worldwide_gross]
      movies_iterator += 1
    end
    
    hash_result[director[:name]] = total_grosses
    dir_iterator += 1
  end
  
  return hash_result
  
end
