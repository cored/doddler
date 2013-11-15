require 'mechanize'
require 'logger'

module DeAldiFernbus

  class Crawler
    URL = "https://system04.derticketservice.de/".freeze

    def self.for(from, to, date)
      new(from, to, date).perform
    end

    def perform
      build_form.submit
    end

    def initialize(from, to, date)
      @params = build_attributes(from, to, date)
      @agent = Mechanize.new.get(URL)
    end

    private
    def build_attributes(from, to, date)
      current_time = Time.now
      attributes = {
        departure:from, 
        destination:to, 
        ddate:date.strftime('%d.%m.%Y'), 
        dtime:"#{current_time.hour}:#{current_time.min}", 
        rdate:date.strftime('%d.%m.%Y'),
      }
    end

    def build_form
      form = @agent.forms[0]
      form["departure"]    = @params[:departure]
      form["destination"]  = @params[:destination]
      form["ddate"]        = @params[:ddate]
      form["dtime"]        = @params[:dtime]
      form["rdate"]        = @params[:rdate]
      form["roundtrip"]    = 0
      form["mode"]         = "d"
      form
    end

  end
end
