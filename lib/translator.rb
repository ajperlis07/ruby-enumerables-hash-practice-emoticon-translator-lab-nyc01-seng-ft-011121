require"pry"
require"yaml"
# require modules here

def load_library(file_name)
emoticons = YAML.load_file(file_name)
 new_hash = {} 
 emoticons.each do |key, value|
   new_hash[key] = {:english => value[0], :japanese => value[1]}
 end
 new_hash
end

def get_japanese_emoticon(file_name,symbol)
    new_hash = load_library(file_name)
   new_hash.each do |key, value|
     if value[:english] == symbol 
       return value[:japanese]
     end
end
    "Sorry, that emoticon was not found"
  # code goes here
end

def get_english_meaning
  # code goes here
end