def ask_number
#définition d'un dé
	puts "lance le dé en appuyant sur entrée !"
	print ">"
	gets
	number = rand(6) + 1
	puts "Le dé affiche #{number} !"
	
	return number
	
end



def play(number)
#x est l'avancement du joueur, pour savoir à quoi correspond le nombre du dé
x = 0
	if number == 5 || number == 6
		x += 1
	elsif number == 1
 		  x-=1		
	else x == x 
	end
#3 conditions if elsif else 
	return x 	
end




def boucle(number, x)
#y est la progression de y dans l'escalier
	y = 0

	while y < 10
	puts "Tu es arrivé(e) à la marche #{y}, plus que #{10-y} marches avant la victoire ;)"
	print ">"

	number = ask_number
	x = play(number)
	y += x
		if y < 0
	  	y = 0 
		end
	end

	puts "Bravoooo ! tu as gagné !!! YOU ARE THE BEST !!! "


end

def perform 
	number = ask_number
	x = play(number)
	boucle(number, x)
#lancement du programme dans l'ordre 
	count = average_lancer
	average_finish_time
end 




def average_lancer
#je fais touner le jeu de manière automatique sans lancés de dé et de manière aléatoire
	y = 0
	count = 0

	while y < 10
		number = rand(6) + 1
		x = play(number)
		y += x
		count +=1
		if y < 0
		  	y = 0 
		end
	end

	return count
	
end


def average_finish_time
#calcul du nombre tours en moyenne il faut pour finir le jeu
# en demandant à l'utilisateur le nombre de jeux il veut pour l'analyse

	nombre = 0
	while nombre == 0 
		puts "Sur combien de tours veux-tu faire tes statistiques (différent de 0) ?"
		print ">"
		nombre = gets.chomp.to_i	
	end


	count = 0
	nombre.times { 
		count += average_lancer
	}
#on réalise "nombre" fois le jeu jusqye la fin avec count = nombre de couts * nombre
		
	puts "Il faut en moyenne lancer #{count/nombre} fois le dé pour gagner"
	#on divise count par le nombre pour avoir la moyenne 

end


perform

#si on veut qu'on laisse 5 secondes le pouce, mettre sleep(5)
#si on veut passer à une page blanche mettre system "clear"