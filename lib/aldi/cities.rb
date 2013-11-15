module DeAldiFernbus
  class Cities
    CITIES = {
      "Berlin FH T" => 37,
      "Berlin Ost Bf" => 62, 
      "Dresden Hbf" => 40,
      "Dresden NST" => 39
    }

    def self.value_for(name)
      CITIES[name]
    end
  end
end
