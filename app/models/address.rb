class Address < ApplicationRecord
  has_many :accomodations
  has_many :locations
  has_many :musicians, through: :accomodations

  attr_reader :mapURL, :htmlButton

  def mapURL
    x = self.address1 + ' ' + self.city + ' ' + self.state
    x = URI.encode( "http://maps.apple.com/?q=" + x)
    return x
  end

  def htmlButton
    if ( self.present? && self.address1 )
      x = "<button class='btn btn-info btn-sm'> " +
          "<a href=" + self.mapURL + "> " +
          self.nickname + " " +
          "<span class='fas fa-directions'></span> " +
          "</a> " +
          "</button>"
    else
      x = self.name
    end 
    return x.html_safe
  end

end

