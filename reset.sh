# script to reset the MCP databases


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

#rails db:reset

