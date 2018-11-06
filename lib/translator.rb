require "yaml"
require "pry"
emoticons = YAML.load_file("./lib/emoticons.yml")
binding.pry

def load_library(emoticons)
  new_hash = {}
  emoticons.each do |meaning, emoticon_array|
    binding.pry
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end