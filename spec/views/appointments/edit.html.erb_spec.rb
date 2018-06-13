require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :name => "MyString",
      :address => "MyString",
      :contact_info => "MyString"
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input[name=?]", "appointment[name]"

      assert_select "input[name=?]", "appointment[address]"

      assert_select "input[name=?]", "appointment[contact_info]"
    end
  end
end
