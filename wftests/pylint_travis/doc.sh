git checkout release

#Remove all existing package .rst files.
rm -rf docs/source/Actions*rst
rm -rf docs/source/Framework*rst
rm -rf docs/build/*

#Rebuild package .rst files to make sure it reflect
sphinx-apidoc -f -o  docs/source  warrior/Actions
sphinx-apidoc -f -o  docs/source  warrior/Framework

set -x
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
# please refer to https://docs.travis-ci.com/user/encryption-keys
# to see how to generate the encryption key
git remote add origin-docs https://$GITHUB_TOKEN@github.com/kaheichan/warriorframework.git

git add docs
git commit -m "[skip ci] update warriorframework rst documents"
git config --list
git push -u origin-docs release