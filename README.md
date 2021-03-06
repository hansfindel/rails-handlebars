# Rails::Handlebars

The rails-andlebars gem handles all your Handlebars precompilation needs. It lets you add your templates in your asset pipeline and to make it easy to mantain a large ammount of templates in order with an easy naming pattern. 

## Installation

Add this line to your application's Gemfile:

    gem 'rails-handlebars', git: "git@github.com:hansfindel/rails-handlebars.git"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-handlebars

## Setup 

And remember to load the handlebars.js file in your project. 

If you do not have a copy of it, download it from [http://handlebarsjs.com/](http://handlebarsjs.com/) and add it to your assets. 

It is recommmended to add this in your vendor/assets/javascripts folder since it will be mantained by other people. It may be necesary to add a reference to the handlebars.js file in your application.js file in order to load it. This can be accomplished by adding the following line at the beginning of the application.js file (after loading jQuery):

    //= require_tree ../../../vendor/assets/javascripts/


## Usage

By default the gem will load all the files with the .handlejs or .js.handlejs or simply .hbjs within the javascripts/templates folder. These files will be accessible in the Handlebars.TEMPLATES variable. Within this variable you can access your templates appending the name of the file or passing it as a key. 

For example, a file located at assets/javascripts/templates named example.handlejs will be accessible in Handlebars.TEMPLATES["example"] and in Handlebars.TEMPLATES.example. 

The gem also supports nesting within the template folder, the key for these files will be the relative path joined by underscors, "_". For example, a file located at assets/javascripts/templates/test named file.handlejs will be accessible in Handlebars.TEMPLATES["test_file"] and in Handlebars.TEMPLATES.test_file.  

A simple handlebars file example. 
    
    <div class='handlejs test'>
        {{title}}
        <div class='container'>
            {{contained}}
        </div>
    </div>

More of handlebars in [their github](https://github.com/wycats/handlebars.js) and/or in [http://handlebarsjs.com/](http://handlebarsjs.com/) 


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
