require 'colorize'

class Animal

  LOCATIONS = {
    :alley_cat => File.exists?('./cats/indoor/back-alley/alley-cat.gif'),
    :lion => File.exists?('./cats/outdoor/africa/lion.jpg'),
    :african_wild_cat => File.exists?('./cats/outdoor/africa/african-wild-cat.jpg'),
    :north_american_cat => File.exists?('./cats/outdoor/north-america/north_american_wild_cat.jpg'),
    :grandma_cat => File.exists?('./cats/indoor/grandmas-house/grandma-cat.jpg')
  }

  def self.create_name(animal)
    animal.to_s.gsub("_", " ").split.map(&:capitalize).join(" ")
  end

  def self.print_response
    LOCATIONS.each_with_index do |(animal_name, file_path), index|
      print "#{index+1}. "
      if file_path == true
        puts "You took #{create_name(animal_name)} home!".colorize('green')
      else
        puts "#{create_name(animal_name)} is still missing!".colorize('red')
      end
    end
  end

end

Animal.print_response