require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute_key, attribute_hash|
    attribute_key.each do |attribute|
      attribute_hash.each do |description, birds_array|
        birds_array.each do |bird|
          if new_hash[bird].nil?
            description_array = []
            description_array << description.to_s
            new_hash[bird] = {attribute_key => description_array}
          else
            new_hash[bird][attribute_key] << description.to_s
          end
        end
      end
    end
  end
end
