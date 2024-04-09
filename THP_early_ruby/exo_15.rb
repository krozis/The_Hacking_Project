check = false

puts "Bonjour, quel est ton annee de naissance ?"
while check != true do
	x = gets.chomp
	year_of_birth = Integer(x) rescue false
	if year_of_birth && (year_of_birth < 2021 && year_of_birth > 0)
		check = true
	else
		print "Veuillez indiquer une date correcte.\n\n"
	end

end

year = year_of_birth;
while year <= 2020 do
	puts "En #{year} tu avais #{year - year_of_birth} ans. Le temps passe si vite!"
	year += 1
end
