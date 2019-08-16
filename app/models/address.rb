class Address < ApplicationRecord
  has_many :musicians
  has_many :accomodations
  has_many :locations

  attr_reader :mapURL, :mapButton, :phoneURL, :phoneButton

  def mapURL
    x = self.address1 + ' ' + self.city + ' ' + self.state
    x = URI.encode( "http://maps.apple.com/?q=" + x)
    return x
  end

  def phoneURL
    x = URI.encode("tel:" + self.phone)
    return x
  end

  def mapButton
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

  def phoneButton
    x = "<button class='btn btn-info btn-sm'> " +
        "<a href=" + self.phoneURL + "> " +
        "<span class='fas fa-phone'></span> " +
        "</a> " +
        "</button>"
    return x.html_safe
  end

end

