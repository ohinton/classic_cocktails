# 🍸 Speakeasy Cocktail Companion 🍸

#### By Olivia & Maldon (Ruby Team) & Rachael & Ned (CSS Team) | Date: July 24, 2016

## Description

The Speakeasy Cocktail Companion is your go-to resource for drinking in the 1920s. Get ready to go on a toot!

## General Setup Instructions

Clone this repository:
```
$ git clone https://github.com/ohinton/classic_cocktails.git
```

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Open a new tab and run:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Start the Sinatra webserver:
```
$ ruby app.rb
```
Launch site by visiting `localhost:4567` in browser


## Tech Used

* Ruby
* Active Record
* Sinatra
* Materialize
* CSS
* HTML

### License

*This software is licensed under the MIT license.*

Copyright (c) 2016 **Epicodus**
