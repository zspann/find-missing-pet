require 'colorize' # this would need a Gemfile

alley_cat = true #File.exists?('./asdf/zxcv/alley_cat.png')

print '1. '
if alley_cat
  puts "You took alley cat home!".colorize('green')
else
  puts "Alley cat is missing!".colorize('red')
end
