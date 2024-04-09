check = false
age = 0;

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

year = 2020 - year_of_birth
while year >= 0
	puts "Il y a #{year} ans, tu avais #{age} ans. Le temps passe si vite!"
	year -= 1
	age += 1
end
