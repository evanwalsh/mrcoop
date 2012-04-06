require 'coop'
require 'mrcoop/authentication'
require 'mrcoop/stream'
require 'mrcoop/version'

module Mrcoop
  class << self
    def parse status
      if s.text && s.text.match(/(\@all)/)
        notify "#{s.text}", title: "#{s.user.name} sent a message to everyone"
        color = :yellow
      else
        color = :blue
      end

      puts "#{s.user.name}: ".color(color)+"#{if s.task then "(#{s.project}/#{s.task}) " end}#{parse(s.text)}"
    end
  end
end