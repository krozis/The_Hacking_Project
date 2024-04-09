check = false

puts "Combien de fois souhaitez vous ecrire le message magique ?"
while check != true do
	x = gets.chomp
	nb = Integer(x) rescue false
	if nb && (nb < 1000 && nb > 0)
		check = true
	else
		print "Veuillez indiquer un nombre correct (compris entre 1 et 999 inclus).\n\n"
	end
end
nb.times do
	puts "Salut, ça farte ?"
end