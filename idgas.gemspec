Gem::Specification.new do |s|
  s.name = "idgas"
  s.version = "0.0.1"
  s.rubyforge_project = 'none'

  s.author = "Peter Schröder"
  s.description = "Helper for handling nil-calls."
  s.email = 'phoetmail@googlemail.com'
  s.homepage = "http://github.com/phoet/idgas"
  s.summary = "If you just dont give a shit about nil add a questionmark to your method-call."

  s.has_rdoc = true
  s.rdoc_options = ['-a', "--inline-source", "--charset=UTF-8"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [ "README.rdoc", "lib/i_dont_give_a_shit.rb" ]
  s.test_files = [ "test/test_i_dont_give_a_shit.rb" ]
end