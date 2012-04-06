module Mrcoop
  class Authentication
    AUTH_FILE = File.join(File.expand_path('~'), '.mrcoop')

    def initialize(email, password)
      @email = email
      @password = password

      Coop.new(@email, @password)
    end

    def write!(email, password)
      
    end

    def read
      
    end
  end
end