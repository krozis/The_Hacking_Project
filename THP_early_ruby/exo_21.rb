check = false
i = 1

puts "Bonjour, quelle est la taille que tu souhaites pour ta pyramide (entre 1 et 25)?"
while check != true do
	tmp = gets.chomp
	height = Integer(tmp) rescue false
	if height && (height < 26 && height > 0)
		check = true
	else
		print "Veuillez indiquer une taille correcte (entre 1 et 25 inclus).\n\n"
	end
end

while i <= height do
	(height - i).times do
		print " "
	end
	i.times do
		print "#"
	end
	puts ""
	i += 1
end