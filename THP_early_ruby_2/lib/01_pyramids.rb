def even(nb)
	if (nb % 2) == 0
		return true
	else
		return false
	end
end

def	half_pyramid(height)
	i = 1
	while i <= height
		puts "#" * i
		i += 1
	end
end

def full_pyramid(height)
	x = 1
	y = 1
	while (x <= height)
		print " " * (height - x)
		puts "#" * y
		y += 2
		x += 1
	end
end

def	wtf_pyramid(height)
	x = (height / 2)
	y = (x * 2) - 1
	full_pyramid((height / 2) + 1)
	while x > 0
		print " " * (1 	+ (height / 2) - x)
		puts "#" * y
		y -= 2
		x -= 1
	end
end

check = false
print "De quelle taille est la pyramide que vous desirez? (nombre impair entre 1 et 25 inclus)\n > "
while (check == false)
	height = gets.to_i
	if (height > 0 && height < 26) && !even(height)
		check = true
	else
		print "Veuillez indiquer une taille comprise entre 1 et 25 inclus. (Nombres impairs uniquement!)\. > "
	end
end
#half_pyramid(height)
#full_pyramid(height)
wtf_pyramid(height)