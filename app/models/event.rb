class Event < ApplicationRecord
  belongs_to :type
  belongs_to :location
  has_many   :event_teams, dependent: :destroy
  has_many   :teams, through: :event_teams
  has_many   :sheets, as: :pad, dependent: :destroy
  has_many   :team_musicians, dependent: :destroy
  has_many   :musicians, through: :team_musicians
  has_many   :instructions, dependent: :destroy
  has_many   :tasks, through: :type

  accepts_nested_attributes_for :sheets, allow_destroy: true,
    reject_if: ->(attrs) { attrs['note'].blank? }

  accepts_nested_attributes_for :event_teams, allow_destroy: true,
    reject_if: :all_blank

  accepts_nested_attributes_for :instructions, allow_destroy: true,
    reject_if: ->(attrs) { attrs['name'].blank? }

  attr_accessor :minutes, :sname

  def minutes
    if ( self.end and self.start)
      ((self.end - self.start)/60).to_i
    else
      0
    end
  end

  def sname
    x = self.name
    x.gsub!(/ \d| dress| sound check/i, "")
    return x
  end

  def smart_tasks
    #
    # if the current event has tasks, send them back
    #
    if self.tasks.count > 0
      return self.tasks.all
    end
    #
    # if not, look for the first event with a similar name that does
    #
    @ev = Event.all
    some_events = @ev.where("name like ?", "%" + self.sname + "%")
    if some_events
      some_events.each do |ee|
        if ee.tasks.count > 0
          return ee.tasks.all
        end
      end
    end
    return nil
  end
end
