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
  binding.pry 
  array.delete_if { |element|.is_a? !string }
end 

