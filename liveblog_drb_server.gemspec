Gem::Specification.new do |s|
  s.name = 'liveblog_drb_server'
  s.version = '0.3.0'
  s.summary = 'A DRb server which runs an instance of a Liveblog'
  s.authors = ['James Robertson']
  s.files = Dir['lib/liveblog_drb_server.rb']
  s.add_runtime_dependency('liveblog', '~> 1.2', '>=1.2.15')
  s.signing_key = '../privatekeys/liveblog_drb_server.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/liveblog_drb_server'
end
