//= link_tree ../images
//= link_directory ../stylesheets .css
// app/assets/config/manifest.js

{
  "background_color": "white",
  "description": "Cheers, l'app qui vous fera aimer le vin",
  "display": "fullscreen",
  "name": "Cheers",
  "icons": [
    <% files = Dir.entries(Rails.root.join("app/assets/images/icons/")).select {|f| !File.directory? f} %>
    <% files.each_with_index do |file, index| %>
      {
        "src": "<%= image_path "icons/#{file}" %>",
        "sizes": "<%= file.match(/.+-(?<size>\d{2,3}x\d{2,3}).png/)[:size] %>",
        "type": "image/png"
      }<%= "," unless (files.size - 1) == index %>
    <% end %>
  ]
}

//= link manifest.json
