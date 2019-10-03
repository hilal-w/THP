def perform
	login(signup)
end
def signup
	puts "Définis ton nouveau mot de passe "
	print "> "
	gets.chomp 
end
def login (pswd)
	system "clear"
	puts "Quel est ton mot de passe ?"
	print "> "
	try = gets.chomp
	while try != pswd
		puts "Mot de passe incorrect. Entre ton mot de passe à nouveau."
		print "> "
		try = gets.chomp
	end
	welcome_screen

end
def welcome_screen
	puts "welcome bro"
end

perform