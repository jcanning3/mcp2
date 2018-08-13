# rails commands to add an address book and travel accomodations
# rails commands to connect musicians to teams (and thus events)
# rails commands to build tasks and assignments


#rails generate scaffold Address name:string nickname:string address1:string address2:string city:string state:string zip:string phone:string
#rails generate scaffold Accomodation address:references musician:references arrival:datetime departure:datetime co:string notes:string
#rails generate scaffold Team_musician team:references musician:references 

rails generate scaffold Instrument name:text order:integer
rails generate scaffold Task task_type:references type:references 
    rails generate scaffold TaskType name:text order:integer

rails generate scaffold Assignment name:string task:references event:references
rails generate scaffold Instructions name:string task:references event:references



# rails db:migrate

# sh reset.sh
# Add entries to db/seeds.rb

# rails db:migrate
# Update app/models/composers.rb to say it has many pieces
# Add :destroy and touch: true to app/models files

