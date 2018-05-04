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

def count_elements(array)
  results = {}
  array.each do | element |
    
    if results[element[:name]]
      results[element[:name]][:count] += 1 
    else 
      binding.pry 
      element[:name][:count] = 1
    end
  end
   results   
end 

