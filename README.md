# JoyoKanji [![Build Status](https://travis-ci.org/tsmsogn/joyo_kanji.svg?branch=master)](https://travis-ci.org/tsmsogn/joyo_kanji)

JoyoKanji is utils for Japanese joyo kanji.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'joyo_kanji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install joyo_kanji

## Usage

### Getting joyo kanji list

```ruby
JoyoKanji.joyo_kanji_list
```

### Checking the string is joyo kanji

```ruby
JoyoKanji.joyo_kanji?('a') #=> false
JoyoKanji.joyo_kanji?('阿') #=> false
JoyoKanji.joyo_kanji?('阿良々木') #=> false
JoyoKanji.joyo_kanji?('忍') #=> true
JoyoKanji.joyo_kanji?('忍野') #=> true
```

```ruby
class MyString < String
  include JoyoKanji
end

MyString.new('忍野').joyo_kanji? #=> true
```

```ruby
'忍野'.extend(JoyoKanji).joyo_kanji? #=> true
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tsmsogn/joyo_kanji.
