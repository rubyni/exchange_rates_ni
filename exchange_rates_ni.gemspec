Gem::Specification.new do |s|
  s.name        = 'exchange_rates_ni'
  s.version     = '0.0.1'
  s.date        = '2017-03-07'
  s.summary     = "El tipo de cambio de los bancos en Nicaragua"
  s.description = "El tipo de cambio de los bancos que operan en Nicaragua"
  s.authors     = ["Paulo McNally"]
  s.email       = 'paulomcnally@gmail.com'
  s.files       = ["lib/exchange_rates_ni.rb"]
  s.homepage    =
      'https://github.com/rubyni/x-exchange_rates_ni-ni'
  s.license       = 'MIT'

  s.add_runtime_dependency 'rest-client', '~> 2.0', '>= 2.0.1'
  s.add_runtime_dependency 'json', '~> 2.0', '>= 2.0.3'
end