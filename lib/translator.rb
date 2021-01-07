require"pry"
require"yaml"
# require modules here

def load_library
emoticons = YAML.load_file(file_name)
 hash = {} 
 emoticons.each do |key, value|
   hash[key] = {:english => value[0], :japanese => value[1]}
 end
 hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end