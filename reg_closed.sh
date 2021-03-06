
#!/bin/bash
# AUTHOR Charlie Hanacek
# DESC This script updates the "Registration is ..." text from open to closed.
# Additionally, it stages the changed files for a git commit
for file in $(ls *.html) 
    do
    echo "Processing " $file
    sed -i.bak -e s/'is OPEN'/'is CLOSED'/g $file
    sed -i.bak -e s/'background-color: green'/'background-color: red'/g $file
    git add $file
done;
rm *.html.bak
echo "You should run git commit now :)"