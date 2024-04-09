tab = [0]
i = 0
tmp = 1

while tmp <= 50
	nb = "#{tmp / 10}#{tmp % 10}"
	tab << "jean.dupont.#{nb}@email.fr"
	if (i % 2 == 0 && i != 0)
		puts tab[i]
	end
	i = i + 1
	tmp += 1
end
puts tab[i]
