require 'sidekiq'

module Sidekiq

  def self.load_json(string)
    Marshal.load(string)
  end
  
  def self.dump_json(object)
    Marshal.dump(object)
  end

end
