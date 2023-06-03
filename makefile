all: README.md

README.md:
	touch README.md
	echo "# The Guessing Game" > README.md
	echo "" >> README.md
	echo "The date and time at which make was run is: *"$$(date)"*" >> README.md
	echo "" >> README.md
	echo "The number of lines in guessinggame.sh is: *"$$(wc -l ./guessinggame.sh | egrep -o "[0-9]+")"* lines" >> README.md

clean:
	rm README.md
