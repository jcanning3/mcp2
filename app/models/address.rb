class Address < ApplicationRecord
  has_many :accomodations
  has_many :locations
  has_many :musicians, through: :accomodations

  attr_reader :mapURL

  def mapURL
    x = self.address1 + ' ' + self.city + ' ' + self.state
    x = URI.encode( "http://maps.apple.com/?q=" + x)
    return x
  end

end

