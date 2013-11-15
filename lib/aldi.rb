require "aldi/version"
require 'aldi/crawler'
require 'aldi/cities'

module Aldi
end

module DeAldiFernbus 
  
  def self.find(from, to, date)
    build_hash(Crawler.for(from, to, date))
  end

  def self.build_hash(returned_form)
    [{
      "departure_station" => station_name(returned_form)
    }]
  end

  def self.station_name(returned_form)
    returned_form 
  end

end
