require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # holiday_hash = {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, season_hash|
    if season == :winter
      season_hash.each {|holiday, supplies| supplies << supply}
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.map do |season, season_hash|
    if season == :spring
      season_hash.map do |holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, season_hash|
    puts "#{season.capitalize}:"
    season_hash.each do |holiday, supplies|
      holiday_string = holiday.to_s
      puts "  #{ }: #{supplies.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  
  holiday_hash.each do |season, season_hash|
    season_hash.select do |holiday, supplies|
      if supplies.include?("BBQ")
        puts 
      end
    end
  end
end







