class FlightsController < ApplicationController

  def index
    @flights=Flight.all
    @airports=Airport.all.map{|u| [u.name, u.id]}
    @passengers=(1..4).each {|a| [a, a]}
    @dates=Flight.all.map{|u| [u.departure_date, u.departure_date]}

    @departures=Flight.where("departure_airport_id= ? AND arrival_airport_id = ? AND departure_date = ?", params[:departure_airport], params[:arrival_airport],
       params[:departing]) unless params.empty?

    @passenger_number= params[:passengers]

  end
end
