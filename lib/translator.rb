require "yaml"
require "pry"
emoticons = YAML.load_file("./lib/emoticons.yml")
puts emoticons.inspect

def load_library(emoticons)
  emoticons
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end