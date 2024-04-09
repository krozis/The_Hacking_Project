require 'io/console'

def press_key(to_say)                                                                                                            
  print to_say                                                                                                    
  STDIN.getch                                                                                                              
end     

def get_rand_dice_nb
	return (rand(1..6))
end

def	down_step(step, stat_mode)
	if step == 0
		if (stat_mode == false)
			puts "Tu te trouvais deja a la marche 0, tu ne descendras pas plus bas!"
		end
		return (0)
	end
	return (step - 1)
end

def	display_score(count, step)
	puts "Tu es actuellement a la marche #{step}."
	puts "Tu as deja fait #{count} lancers de des."
end

def	game
	count = 0
	step = 0

	puts "La partie debute! Tu es au pied de l'escalier (marche 0) et tu dois atteindre le sommet (marche 10)"
	while (step < 10)
		count += 1
		grdb = get_rand_dice_nb
		if (grdb == 5 || grdb == 6)
			puts "Tu as fait un #{grdb}! Tu montes d'une marche!"
			step += 1
		elsif (grdb == 1)
			puts "Tu as fait un #{grdb}! Tu descends d'une marche!"
			step = down_step(step, false)
		else
			puts "Tu as fait un #{grdb}, tu n'as pas change de marche."
		end
		display_score(count, step)
		press_key("\nAppuyer sur une touche pour continuer\n\n")
	end
	puts "Felicitations, tu es arrive au sommet en #{count} lancers de des!"
end

def	game_stat_mode
	count = 0
	step = 0

	while step < 10
		grdb = get_rand_dice_nb
		if (grdb == 5 || grdb == 6)
			step += 1
		elsif (grdb == 1)
			step = down_step(step, true)
		end
		count += 1
	end
	return (count)
end

def	average_finish_time
	total_count = 0
	games_launched = 0

	100.times do
		games_launched += 1
		total_count += game_stat_mode()
	end
	puts "Score moyen sur 100 parties : #{total_count / games_launched}"
end

def	perform
	puts("Bienvenue dans le jeu de l'escalier!")
	puts("Pour lancer le mode statistiques, tapez 'stat', sinon appuyez sur ENTREE.")
	mode = gets.chomp
	if (mode == "stat")
		average_finish_time()
	else
		game()
	end
end

perform