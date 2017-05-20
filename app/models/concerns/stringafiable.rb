module Stringafiable
  module InstanceMethods
    def to_s
      self.first_name + " " + self.last_name
    end
  end
end
