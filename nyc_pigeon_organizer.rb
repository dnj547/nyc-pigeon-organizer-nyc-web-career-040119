require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute_key, attribute_hash|
    attribute_hash.each do |attribute, birds_array|
      birds_array.each do |bird|
        if new_hash[bird].nil?
          new_hash[bird] = {attribute_key => attribute}
          binding.pry
        end
      end
    end
  end
end
