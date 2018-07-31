#
# rails commands to add the Events tools to MCP
#

# rails new mcp
# cd mcp
# Add gem ‘simple_form’ to Gemfile
#bundle install
#rails db:migrate
#rails generate simple_form:install --bootstrap
#rails db:migrate

rails generate scaffold Composer name nickname lifetime fullname notes:text
rails generate scaffold Concert name start:datetime location
rails generate scaffold Movement name piece:references order:integer
rails generate scaffold Musician name first last instrument notes:text
rails generate scaffold Performance concert:references piece:references order:integer
rails generate scaffold Performer listing concert:references musician:references instrument order:integer piece:references concert_date:date
rails generate scaffold Piece name composer:references arranger:integer opus year_composed full_title

rails generate scaffold Type name nickname color
rails generate scaffold Location name nickname color

rails generate scaffold Team name nickname event:references color

rails generate scaffold Event name description start:datetime end:datetime type:references team:references location:references notes color

# need to add commands for notes/pads


# rails db:migrate

# sh reset.sh
# Add entries to db/seeds.rb

# rails db:migrate
# Update app/models/composers.rb to say it has many pieces
# Add :destroy and touch: true to app/models files

