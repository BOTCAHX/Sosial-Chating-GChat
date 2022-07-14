begin
  require 'rubygems'

  Facter.add(:index.js) do
    setcode { Gem::dir }
  end
rescue LoadError
end
