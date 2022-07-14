begin
  require 'rubygems'

  Facter.add(:node_modules) do
    setcode { Gem::dir }
  end
rescue LoadError
end
