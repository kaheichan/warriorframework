#Remove all existing package .rst files.
rm -rf docs/source/Actions*rst
rm -rf docs/source/Framework*rst
rm -rf docs/build/*

#Rebuild package .rst files to make sure it reflect
sphinx-apidoc -f -o  docs/source  warrior/Actions
sphinx-apidoc -f -o  docs/source  warrior/Framework

git config 

git add docs
git commit -m "update warriorframework rst documents"
git config --list
git push -u origin release