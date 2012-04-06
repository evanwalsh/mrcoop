require 'yaml'

module Mrcoop
  class Authentication
    AUTH_FILE = File.join(File.expand_path('~'), '.mrcoop')

    def initialize(email, password)
      @email = email
      @password = password

      Coop.new(@email, @password)
    end

    def self.write!(email, password)
      config = { email: email, password: password }
      File.open(AUTH_FILE, 'w') {|f| f.write(YAML.dump(config)) }
    end

    def self.read
      YAML.load(File.read(AUTH_FILE))
    end
  end
end