#/!bin/bash

# Homework 3.4
# Analyses
# Gintoft Alexander, 20/03/2017

options=(
	'1' # выводит список файлов и папок в текущей папке
	"2" # выводит время
	'3' # определеяет тип файла
	'4' # считывает имя файла и делает резервную копию
	'5' # останавливает выполнение скрипта
)
echo 'Please choose an option'
select input in "${options[@]}"; do
	case "$input" in
		"${options[0]}")
			ls # выводит список файлов и папок в текущей папке
			;;
		"${options[1]}")
			date $'+Time: %T\nDate: %D' # вывести дату
			;;
		"${options[2]}")
			read -p 'What file do you wish to check? ' finput # проверяет тип файла - папка или файл
			if [[ -d $finput ]]; then # если директория
				format='%s is a directory.\n' # вывести "Имя" is a dicertory
			elif [[ -f $finput ]]; then # если директория
				format='%s is a file.\n' # вывести "Имя" is a file
			else
				format='%s does not exist.\n' # исключение, такого файла не существует
			fi
			printf "$format" "$finput" # печать описания, полученного в if
			;;
		"${options[3]}")
			read -p 'Please enter filename: ' binput # считывает имя файла
			cp "$binput"{,.bak} # создает бекап файла
			;;
		"${options[4]}")
			break # ничего не делает
			;;
		*)
			echo 'Not a valid option.' # выводит ошибку, если неверные входные данные 
			;;
	esac
done