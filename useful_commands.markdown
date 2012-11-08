## Vim
### Open Quickfix list
copen

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
#### Remove all merged branches
git branch -r --merged production | sed 's/ *origin\///' | grep -v 'production$' | xargs -I% git push origin :%

#### Git diff a file against another branch
Gdiff production

#### Gitv
i - opens commit info for a commit
<cr> opens the revision of the file for the commit

####jump to diffs
[c

]c

####update diff spec
diffupdate

## Unix
--- find all files with full path of type n
find . | grep pdf

lsof -p <pid>
lsof -i

### Postgres

#### Have a look at active pg connections
select * from pg_stat_activity;

#### Data folder
ls /usr/local/var/postgres
#### Edit config in brew install
sudo vi /usr/local/var/postgres/postgresql.conf

### Find file by name
sudo find / -name php.ini

### PHP
php -i #outputs php configuration (information)

### start
lunchy start -w php-cgi

### Perl
#### Perl recursive search replace
perl -i -pe "s/oldstring/NewString/gi" `find . -name *.blah`

### Ack
#### open all files that match ack search terms in existing vim
ack -l your_search_term | xargs mvim -p -c /$1

### find all files that have the case insensitive string agreement in the name of the file
find . | grep -v 'git' | ack agreement -i | xargs mvim -p -c /$1

#### Exclude directory
ack --ignore-dir=bleh

## Ctags
echo $GEM_HOME

ctags -R --exclude=.git --exclude=log * $GEM_HOME

## Networking ( Mac )
dscacheutl -flushcache

## Symfony

## Browsers
### Firefox
cmd f12   - opens firefox

## Ruby
### Pry
#### As Debugger
binding.pry

#### As rails console
pry -r ./config/environment


#### Funding Circle
in rails console to see crontab:
Crontab.all.map {|c| [c.name, c.id] }
