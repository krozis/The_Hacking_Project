def	signup
	print "Bonjour, veuillez definir un mot de passe\n > "
	return (gets.chomp)
end

def login(password)
	passcheck = ""
	if (passcheck == password)
		puts "Vous n'avez pas defini de mot de passe. Ce n'est pas professionnel de votre part. Remediez-y."
		return (false)
	else
		puts "Veuillez entrer votre mot de passe\n > "
		while (passcheck != password)
			passcheck = gets.chomp
			if (passcheck == password)
				return (true)
			else
				print "Mot de passe incorrect, essayez de nouveau\n > "
			end
		end
	end
end

def	welcome_screen
	print "Bienvenue dans votre zone secrete!\n\n"
	puts "Dernieres informations ajoutees au dossier TOP-SECRET:"
	puts " - Zooey Deschanel serait en fait un triton metamorphe."
	puts " - La Terre est plate, mais uniquement le jeudi."
end

def perform
	password = signup
	if (login(password) == true)
		puts "Mot de passe correct"
		welcome_screen()
	end
end

perform