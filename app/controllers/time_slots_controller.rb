class TimeSlotsController < ApplicationController

  def index
    @time_slots = TimeSlot.all
  end

  def new
    @time_slot = TimeSlot.new
  end

  def create
    @time_slot = TimeSlot.new(time_slot_params)

    if @time_slot.save
      redirect_to time_slots_path
    else
      render :new
    end
  end

  private

  def time_slot_params
    params.require(:time_slot).permit(:name, :start_time, :contact_info)
  end
end
