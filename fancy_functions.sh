function gco
{
	if [ -d ".git" ]
	then 
		git commit -m "$*"
	else
		echo "vous n'etes pas dans un repertoir git"
	fi
}
