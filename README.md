# Exchange Rates Nicaragua

The exchange rate of banks operating in Nicaragua

## Install

    gem install exchange_rates_ni

## Gemfile

    gem 'exchange_rates_ni'

## Example BAC
    
    exchange_rates_ni = ExchangeRatesNi.new('USD') # or EUR
    puts exchange_rates_ni.bac.sale
    puts exchange_rates_ni.bac.buy

## Banks

- [x] Bac Credomatic (v0.0.1)
- [ ] Banpro Grupo Promerica
- [ ] BDF
- [ ] Ficohsa
- [ ] LAFISE Bancentro
- [ ] Procredit

## Build

    $ gem build exchange_rates_ni.gemspec
    
## Local install

    $ gem install exchange_rates_ni-x.x.x.gem
    
## Push to RubyGems

    gem push exchange_rates_ni-x.x.x.gem

## Run test

    $ rake test