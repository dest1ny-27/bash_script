#!/bin/bash
mkdir -p BEZ/{VARG,VARJ/GR1,VARI/GR2}
touch BEZ/VARJ/GR1/illia.txt
touch BEZ/VARI/GR2/bezborodko.txt
echo "Group: 441; Date: 12.07.2022; Email: so+me_mail123@chnu.edu.ua" > BEZ/VARJ/GR1/illia.txt
echo "Group: 441; Date: 12.07.2022; Email: so+me_mail123@chnu.edu.ua" > BEZ/VARI/GR2/bezborodko.txt 
echo Directory tree was created!
cp BEZ/VARJ/GR1/illia.txt BEZ/illia_copy.txt
cp BEZ/VARI/GR2/bezborodko.txt BEZ/bezborodko_copy.txt
echo Files have been copied to the root directory!
cd BEZ
declare file="illia_copy.txt"
declare regex="\<[a-zA-Zа-яА-ЯіїєІЇЄ0-9._%+-]+@[a-zA-Zа-яА-ЯіїєІЇ0-9-]{0,1}\.{0,1}[a-zA-Zа-яА-ЯіїєІЇ0-9-]+\.{1}[a-zA-Zа-яА-ЯіїєІЇ]{2,6}\>"
declare file_content=$( cat "${file}" )
echo Content of $file :
echo $file_content
if [[ " $file_content " =~ $regex ]]
    then
        echo "Email is contained in this file."
    else
        echo "Email isn’t contained in this file."
fi
exit