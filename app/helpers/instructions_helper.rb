module InstructionsHelper
  def setup_instructions(evt)
    #
    # so, we have an event named evt
    #
    #   evt.tasks
    #   evt.instructions
    # 

    evt.tasks.each do |t|
	puts t.name
	i = evt.instructions.where(task_id: t.id)
	if i.first
	  i.first.tmp = t.name
	  i.first.save
	else
	  # do something different
	  puts "creatign new instruction"
	  new_i = Instruction.new
	  new_i.event_id = evt.id
	  new_i.task_id  = t.id
	  new_i.tmp      = t.name
	  new_i.name     = "instructions please"
	  new_i.save
	end
    end
  end
end
