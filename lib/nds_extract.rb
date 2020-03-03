$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


# def gross_for_director(director_data)
#   movie_index = 0 
#   d_gross = 0 
#   while movie_index < director_data[:movies].length do 
#       d_gross += director_data[:movies][movie_index][:worldwide_gross]
#       movie_index += 1 
#   end 
#   d_gross
# end

def gross_for_director(director_data)
  d_gross = 0 
  director_data[:movies].each do |movie|
    d_gross += movie[:worldwide_gross]
  end 
  d_gross
end 


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  hash = {}
  nds.each do |director| #starting with passing through an array
      d_name = director[:name]
      d_gross = 0 
      director[:movies].each do |movie| 
          d_gross += movie[:worldwide_gross]
      end 
      hash[d_name] = d_gross
  end 
  hash
end 


# def directors_totals(nds)
#   hash = {}
#   director_index = 0 
#   while director_index < nds.length do 
#     movie_index = 0 
#     d_gross = 0 
#     d_name = nds[director_index][:name]
#     while movie_index < nds[director_index][:movies].length do 
#       d_gross += nds[director_index][:movies][movie_index][:worldwide_gross]
#       movie_index += 1 
#     end 
#     director_index += 1 
#     hash[d_name] = d_gross
#   end
#   hash
# end

 



