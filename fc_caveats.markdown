== Weird caveats when devving funding circle

When viewing autobid (php) in development mode on an IE VM running IE( ... the user agent that you get back from PHP is IE7.
print $_SERVER['HTTP_USER_AGENT'];

== Database envs for local environment

bin/rake db:migrate RAILS_ENV=test
bin/rake db:migrate RAILS_ENV=cucumber
bin/rake db:migrate RAILS_ENV=development


