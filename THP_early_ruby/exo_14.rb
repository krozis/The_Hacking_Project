check = false
i = 0

puts "Depuis quel nombre souhaitez vous que je compte ?"
while check != true do
	x = gets.chomp
	nb = Integer(x) rescue false
	if nb && (nb < 5000 && nb > 0)
		check = true
	else
		print "Veuillez indiquer un nombre correct (compris entre 1 et 4999 inclus).\n\n"
	end
end
while nb >= 0
	puts nb
	nb = nb - 1
end