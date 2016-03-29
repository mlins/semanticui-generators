# SemanticUI Generators

semanticui-generators provides [SemanticUI](http://semantic-ui.com/) scaffold generators for Rails 5 (supported Rails >= 3.1).

## Screenshots

![](https://github.com/mlins/semanticui-generators/blob/master/doc/images/screenshot-1.png)

![](https://github.com/mlins/semanticui-generators/blob/master/doc/images/screenshot-2.png)

## SemanticUI Installation

Installs [SemanticUI](http://semantic-ui.com/) via [Semantic-UI-Rails-LESS](https://github.com/Semantic-Org/Semantic-UI-Rails-LESS)

## Give it a try

Add this to your Gemfile:

`gem 'semanticui-generators'`

Then run these commands:

`bundle`

`rails generate semanticui:install`

`rails generate scaffold post title body:text published:boolean`

`rake db:migrate`

`rails server`

Go to: `http://localhost:3000/posts`

## Credits

* [SemanticUI](http://semantic-ui.com/)
