file_in=$1
file_out=$2
pandoc $file_in \
	--from=markdown \
	--to=html \
	--output=$file_out \
	--normalize \
	--template=plantilla.html \

xmllint \
	--valid \
	--noout \
	$file_out
