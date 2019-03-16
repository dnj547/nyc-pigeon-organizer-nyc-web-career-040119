require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute_key, attribute_hash|
    attribute_hash.each do |attributes, birds_array|
      attributes.each do |attribute|
        birds_array.each do |bird|
          if new_hash[bird].nil?
            attribute_array = []
            attribute_array << attribute.to_s
            new_hash[bird] = {attribute_key => attribute_array}
          else
            new_hash[bird][attribute_key] << attribute.to_s
          end
        end
      end
    end
  end
end
