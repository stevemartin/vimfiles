## Vim
### Commenting
\\\  - comments out
\\   - uncomments

### Mode switching
jk - Escape

### Embedded
\rccc  - Cucumber current (feature) file
\rccl  - Cucumber current (feature file) line
\rcss  - Rspec current (spec) file
\rcll  - Rspec current (spec file) line

### Git
#### Git diff a file against another branch
Gdiff production

####jump to diffs
[c
]c

####update diff spec
diffupdate

## Unix
### Perl
#### Perl recursive search replace
perl -i -pe "s/oldstring/NewString/gi" `find . -name *.blah`

### Ack
#### open all files that match ack search terms in existing vim
ack -l your_search_term | xargs mvim -p -c /$1

## Ctags
echo $GEM_HOME
ctags -R --exclude#.git --exclude#log * $GEM_HOME

