require "yaml"
require "pry"
#emoticons = YAML.load_file("./lib/emoticons.yml")

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}
  emoticons.each do |meaning, emoticon_array|
    if new_hash["get_meaning"] && new_hash["get_emoticon"]
      new_hash["get_meaning"][emoticon_array[1]] = meaning
      new_hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]      
    else
      new_hash["get_meaning"] = {emoticon_array[1] => meaning}
      new_hash["get_emoticon"] = {emoticon_array[0] => emoticon_array[1]}
    end 
  end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons_hash = load_library(file_path)
  outcome = ""
  emoticons_hash["get_emoticon"].each do |pair|
    if emoticon == pair[0]
      outcome = pair[1]
    end 
  end
  outcome
end

def get_english_meaning
  # code goes here
end