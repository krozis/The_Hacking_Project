check = false

puts "Bonjour, quel est ton annee de naissance ?"
while check != true do
	x = gets.to_i
	year_of_birth = Integer(x) rescue false
	if year_of_birth && (year_of_birth < 2021 && year_of_birth > 0)
		check = true
	else
		print "Veuillez indiquer une date correcte.\n\n"
	end
end

while year_of_birth <= 2020 do
	puts year_of_birth
	year_of_birth += 1
end