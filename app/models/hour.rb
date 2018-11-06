class Hour < ApplicationRecord
  def only_hour
    self.hour[11..-7]
  end
end
