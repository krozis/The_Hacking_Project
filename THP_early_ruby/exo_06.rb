number_of_hours_worked_per_day = 10
number_of_days_worked_per_week = 5
number_of_weeks_in_THP = 11

puts "Travail : #{number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"
puts "Et en minutes ça fait : #{number_of_minutes_in_an_hour * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"

=begin 
We want to print the result of the operation nb_hr/day * nb day/wk * nb_wk/session at line 5
Line 6 cant work because the variable "number_of_minutes_in_an_hour" has never got set.
=end
