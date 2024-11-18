README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Run Date and Time" >> README.md
	date >> README.md
	echo "\n## Lines of Code" >> README.md
	wc -l < guessinggame.sh | awk '{print $$1}' >> README.md
