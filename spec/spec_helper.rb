require 'json'

file = JSON.parse (File.read("json_example.json"))

# file['colors'].each do | i |
#     puts {["color"]}
# end

#
#
# puts file['colors'].first
# p file['colors']["code"]["hex"]
# file['colors'].each do | element |
#
#   if element["color"] == "red"
#     p element["code"]["hex"]
#   end
#
#   # p file['colors']["code"]["hex"]
# end
