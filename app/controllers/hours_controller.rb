class HoursController < ApplicationController
  def index
    h = Hour.create(hour: Time.now)  # create a new hour
    @hours = Hour.order(:id).reverse_order.limit(10).to_a  # to_a: less queries in view
    Hour.where('id < ?', @hours.last.id).delete_all if rand(9).zero?  # delete old records
  end
end
