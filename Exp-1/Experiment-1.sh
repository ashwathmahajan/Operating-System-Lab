# This scripts creates a directory, enters it, creates a file and asks the user to write into it and then enters the input into the file
# checks if a directory of name 'newdirectory' exists or not
if [ ! -d 'newdirectory' ]; then
	mkdir 'newdirectory'
	echo 'newdirectory is created'
	cd newdirectory
	pwd

	# create a file 'newfile.txt'
	touch 'newfile.txt'
	echo 'newfile.txt created, to write into it press 1, else press 0'
	choice=-1
	# reads user input to make a choice
	while [ $choice -ne 0 ] || [ $choice -ne 1]; do
		read choice
		if [ $choice -eq 1 ]; then
			echo 'Write a line'
			read REPLY
			echo $REPLY > newfile.txt
			break
		elif [ $choice -eq 0 ]; then
			echo 'Sure'
			break
		else
			echo 'Please select a valid option (0 or 1)'
		fi
	done
	cat 'newfile.txt'

#  if directory exists, then go into it, print a message and user's current location (i.e. inside the directory)
else
	cd newdirectory
	echo 'newdirectory already exists'
	pwd
	ls -l
fi

# go back to original working directory
cd ..
pwd

