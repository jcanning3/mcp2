#
# rails commands to add the travel plans to MCP
# rails commands to add day specific notes to MCP
#


rails generate scaffold Airline name:string nickname:string
rails generate scaffold Flight musician:references airline:references flight:string from:string departure:datetime destination:string arrival:datetime notes:text
rails generate scaffold Discussion date:datetime color:string resolved:boolean

# rails db:migrate

# sh reset.sh
# Add entries to db/seeds.rb

# rails db:migrate
# Update app/models/composers.rb to say it has many pieces
# Add :destroy and touch: true to app/models files

