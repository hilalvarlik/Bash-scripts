if [[ ! $# -eq 2 ]]
then
	echo “Using: string_file[file_path]”
else
	if [[ -f $1]]
	then
		echo “dosya var”
	else
		echo “dosya yok”
	fi
fi
