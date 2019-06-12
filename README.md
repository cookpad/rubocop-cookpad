# RuboCop Cookpad

A [RuboCop](https://github.com/rubocop-hq/rubocop) extension allowing Cookpad developers to enforce their custom best practices and coding conventions.

## Installation

You can install the `rubocop-cookpad` gem

```
gem install rubocop-cookpad
```

or add it in your Gemfile

```ruby
gem 'rubocop-cookpad'
```

## Usage

You need to tell RuboCop to load this extension. Inside your `.rubocop.yml`, add:
```yml
require:
  - rubocop-cookpad
```
