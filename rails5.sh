# rails commands to add an address book and travel accomodations
#


rails generate scaffold Address name:string nickname:string address1:string address2:string city:string state:string zip:string phone:string
rails generate scaffold Accomodation address:references musician:references arrival:datetime departure:datetime co:string 

# rails db:migrate

# sh reset.sh
# Add entries to db/seeds.rb

# rails db:migrate
# Update app/models/composers.rb to say it has many pieces
# Add :destroy and touch: true to app/models files

