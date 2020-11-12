require 'yaml'
require 'pry'
def load_library(file_path)
  emoticons_hash = YAML.load_file(file_path)
  puts emoticons_hash.inspect
  hash = {}
  array = []
    emoticons_hash.each() do |key, value|
      hash[key] = {}
      hash[key][:english] = value[0]
      hash[key][:japanese] = value[1]
    end 
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  binding.pry
  hash_translations = load_library(file_path)
  hash_translations.each do |key, value| 
    hash_translations.keys.find
    
    binding.pry
    if key['english'] == emoticon
        return key['japanese']
    end
  end 
end

def get_english_meaning(file_path, emoticon)
  hash_translations = load_library(file_path)
  hash_translations.find do |object| 
    if emoticon == object[key]['japanese']
      binding.pry
      return key
    end 
  end 
end