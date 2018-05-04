require 'pry'

def begins_with_r(array)
  word = true 
  array.each do |tool|
    if tool.start_with?("r") 
      word = true 
    else 
      word = false 
    end 
  end 
  word 
end 

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end 
end 

def first_wa(array)
  array.detect do |word|
    word.to_s.start_with?("wa")
  end 
end 

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end 

#[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#[{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

      # create  a new hash and set it equal to found_element
      # give the hash a name property equal to the element name
      # give that hash a count of 0
      # add that hash to our results array
      #increase the found element's count by one

def count_elements(array)
  array.each do | element |
   element[:count] = 0 
    name = element[:name]
   array.each do |item|
    if item[:name] == name 
      element[:count] += 1 
    end  
  end 
 end.uniq 
end 

def merge_data(key, data)
  
 new_array = []
 key.each do |name|
 first_name = name[:first_name]
  data.each do |attributes|
    if attributes[first_name] 
      merged_data = attributes[first_name]
      merged_data[:first_name] = first_name 
      new_array << merged_data
    end 
   end 
  end 
  new_array
end 

def find_cool(cool)
  cool.select { |hash| hash[:temperature] == "cool"}
end 

def organize_schools(schools)
  organized_hash = {}
  schools.each do |school, hash|
    organized_hash[hash[:location]] ||= [] 
    organized_hash[hash[:location]] << school 
   end 
   organized_hash
end 
