class BookingsController < ApplicationController
  def new
    @flight=Flight.find(params[:flight_id])
    @flight_id=params[:flight_id]
    @passenger_number= params[:passengers].to_i
    @booking=Booking.new
    @passengers=[]
    @passenger_number.times do @passengers<<Passenger.new end
  end

  def create
    params["booking"]["passengers"].each do |passenger|
        a= Passenger.create(person_params(passenger))
        b= Booking.create(flight_id:params["booking"]["flight_id"], passenger_id:a.id )
        PassengerMailer.booking_confirmation(a, b).deliver_now
    end

    redirect_to  bookings_path
  end

  def index
    @bookings=Booking.all
  end
  
  def person_params(my_params)
    my_params.permit(:name, :email)
  end


end
