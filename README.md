# Uzbl

Gem that can't be used to control [uzbl](http://uzbl.org) instances using the socket interface and [wmctrl](http://tomas.styblo.name/wmctrl/)

It was written to run on my Raspberry Pi which cycles through various monitoring screens.


## Requirements

Requires just the uzbl browser to be installed and the following requirements for [ruby-wmctrl](https://github.com/ytaka/ruby-wmctrl)

* libx11-dev
* libglib2.0-dev
* libxmu-dev

I've also created a [puppet repo](https://github.com/cornet/pi-kiosk-puppet) to setup the Raspberry Pi ready.


## Installation

Add this line to your application's Gemfile:

    gem 'uzbl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uzbl


## Usage

See ```bin/uzbl.rb``` for example usage.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
