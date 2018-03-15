class PassengerMailer < ApplicationMailer

  def booking_confirmation(passenger, booking)
    @passenger= passenger
    @booking=booking
    mail(to:@passenger.email, subject: "Booking Confirmation")
  end
end
