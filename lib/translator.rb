require "yaml"
require "pry"
#emoticons = YAML.load_file("./lib/emoticons.yml")

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}
  emoticons.each do |meaning, emoticon_array|
    new_hash["get_meaning"] = {emoticon_array[1] => meaning}
    new_hash["get_emoticon"] = {emoticon_array[0] => emoticon_array[1]}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end