for i in $(ls); #iterating through the current directory
do
        echo "Do you want to delete "$i"?(y/n)"
        read x
        if [[ $x == "y" ]] # if yes then deleting the file using rm command
        then
                rm $i
        else
                echo "file is skipped"
        fi
done