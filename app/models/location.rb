class Location < ApplicationRecord
  belongs_to :address
  has_many :events

  attr_reader :htmlButton


  def htmlButton
    if ( self.address.present? && self.address.address1 )
      x = " <button class='btn btn-basic btn-sm'> " +
          "<a href=" + self.address.mapURL + "> " +
          self.name + " " +
          "<span class='fas fa-directions'></span> " +
          "</a> " +
          "</button>"
    else
      x = self.name
    end
    return x.html_safe
  end

end
