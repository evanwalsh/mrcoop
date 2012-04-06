module Mrcoop
  class Session
    def initialize
      @auth = Mrcoop::Authentication.read
      Coop.new(@auth[:email], @auth[:password])
    end
  end
end