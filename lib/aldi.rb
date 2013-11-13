require "aldi/version"
require 'aldi/crawler'
require 'aldi/cities'

module Aldi
end

module DeAldiFernbus 
  
  def self.find(from, to, date)
    submited = Crawler.for(from, to, date)
    require 'pry'; binding.pry  
  end

  def self.build_hash(returned_form)
  end

end
