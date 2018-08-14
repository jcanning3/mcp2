Instrument.all.each do |i|
  puts i.name
  Musician.where(old_instrument: i.name.downcase).each do |m|
    puts "  " + m.name
    #m.update(instrument_id: i.id)
  end
end
