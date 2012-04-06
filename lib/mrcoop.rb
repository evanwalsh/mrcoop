require 'coop'
require 'rainbow'
require 'mrcoop/authentication'
require 'mrcoop/session'
require 'mrcoop/version'

module Mrcoop
  class << self
    def parse status
      if status.text && status.text.match(/(\@all)/)
        notify "#{status.text}", title: "#{status.user.name} sent a message to everyone"
        color = :yellow
      else
        color = :blue
      end

      puts "#{status.user.name}: ".color(color)+"#{if status.task then "(#{status.project}/#{status.task}) " end}#{status.text}"
    end
  end
end