# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# /config/initializers/assets.rb
# Rails.application.config.assets.precompile = [ Proc.new{ |path| !File.extname(path).in?(%w(.js .css .html .erb .md .scss .coffee)) }, /application.(css|js)$/ ]   #added  then comment because needless(week1 -> engines)
# Rails.application.config.assets.precompile = [ Proc.new { |filename, path| path =~ /app\/assets/ && !%w(.js .css .html .erb .md).include?(File.extname(filename)) },/application.(css|js)$/ ]  #added alternative
# Rails.application.config.assets.precompile << Dir.glob(Rails.root.join('app', 'assets', 'the_hacking_project', '**/*')).grep(/[\W\w]*\.(js|css|png|jpg)$/)                                              #added then comment (needless(week1 -> engines))
Rails.application.config.assets.precompile = [ Proc.new { |filename, path| path =~ /app\/assets/ && !(path =~ /app\/assets\/public_data/) && !(path =~ /app\/assets\/zizani/) && !%w(.js .css .html .erb .md).include?(File.extname(filename)) }, /application.(css|js)$/, /daniele.jpg$/]  #include all asset, not in public_data, not inner zizani, not with some extensions; add application.(js|css); add daniele.jpg(html_forms)
