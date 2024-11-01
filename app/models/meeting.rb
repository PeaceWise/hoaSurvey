class Meeting < ApplicationRecord
 
    # Calculate the second Tuesday of a given month and year
  def self.second_tuesday(year, month)
    # Start on the first day of the month
    first_day = Date.new(year, month, 1)

    # Find the first Tuesday of the month
    first_tuesday = first_day + ((2 - first_day.wday) % 7)
    first_tuesday += 7 if first_tuesday.month != month  # Ensure it's the correct month

    # Add 7 days to get the second Tuesday
    second_tuesday = first_tuesday + 7

    second_tuesday
  end    
end
