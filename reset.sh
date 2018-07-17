# script to reset the MCP databases

LCCMF/parseSched.pl -h  < LCCMF/sched23.txt  > LCCMF/sched.tab
LCCMF/parseSched.pl -he < LCCMF/sched23.txt  > LCCMF/event_team.tab

LCCMF/create.pl -t Composer    -h < LCCMF/composers.tab    >  db/seeds.rb
echo "puts 'starting concerts'" >> db/seeds.rb
LCCMF/create.pl -t Concert     -h < LCCMF/concerts.tab     >> db/seeds.rb
echo "puts 'starting musicians'" >> db/seeds.rb
LCCMF/create.pl -t Musician    -h < LCCMF/musicians.tab    >> db/seeds.rb
echo "puts 'starting pieces'" >> db/seeds.rb
LCCMF/create.pl -t Piece       -h < LCCMF/pieces.tab       >> db/seeds.rb
echo "puts 'starting movement'" >> db/seeds.rb
LCCMF/create.pl -t Movement    -h < LCCMF/movements.tab    >> db/seeds.rb
echo "puts 'starting performances'" >> db/seeds.rb
LCCMF/create.pl -t Performance -h < LCCMF/performances.tab >> db/seeds.rb
echo "puts 'starting performers'" >> db/seeds.rb
LCCMF/create.pl -t Performer   -h < LCCMF/performers.tab   >> db/seeds.rb
echo "puts 'starting teams'" >> db/seeds.rb
LCCMF/create.pl -t Team        -h < LCCMF/teams.tab        >> db/seeds.rb
echo "puts 'starting locations'" >> db/seeds.rb
LCCMF/create.pl -t Location    -h < LCCMF/locations.tab    >> db/seeds.rb
echo "puts 'starting types'" >> db/seeds.rb
LCCMF/create.pl -t Type        -h < LCCMF/types.tab        >> db/seeds.rb
echo "puts 'starting events'" >> db/seeds.rb
LCCMF/create.pl -t Event       -h < LCCMF/sched.tab        >> db/seeds.rb
echo "puts 'starting event_teams'" >> db/seeds.rb
LCCMF/create.pl -t EventTeam   -h < LCCMF/event_team.tab   >> db/seeds.rb

#rails db:reset

