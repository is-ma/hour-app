class HoursController < ApplicationController
  def index
    create_and_keep_ten
    @hours = Hour.all.reverse
  end

  def create_and_keep_ten
    h = Hour.create(hour: Time.now)
    drop_hrs = Hour.all - Hour.last(10)
    drop_hrs.each { |hr| hr.destroy }
  end
end
