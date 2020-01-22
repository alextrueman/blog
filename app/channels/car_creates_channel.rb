class CarCreatesChannel < ApplicationCable::Channel
  def subscribed
     stream_from "car_creates_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
