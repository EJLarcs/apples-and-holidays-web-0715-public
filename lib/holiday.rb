require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  # given that holiday_hash looks like this:
  # {
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  #add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_hash[:winter].each { |holiday, supplies_array| supplies_array << supply }

end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array1 = holiday_hash[:winter][:christmas]
  array2 = holiday_hash[:winter][:new_years]
  array3 = array1 + array2
  array3 
  #you can plus two arrays together... concatenating without using concat
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each_key do |key|
   puts "#{key.capitalize}:"
   holiday_hash[key].each do |key2, values2|
     values = values2.join(", ")
     key2_1 = key2.to_s.split("_")
     key2_2 = key2_1.map {|word| word.capitalize }
     key2_3 = key2_2.join(" ")
     puts "  #{key2_3}: #{values}"
   end
 end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each_pair do |season, holidays|
    holidays.each_pair do |event, supplies|
      supplies.each do |x| 
        if x == "BBQ"
        array << event
        end
      end 
  end
  end
  array 
  # return an array of holiday names (as symbols) where supply lists include the string "BBQ"
end







