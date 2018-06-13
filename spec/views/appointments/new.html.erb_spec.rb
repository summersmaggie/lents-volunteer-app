require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :name => "MyString",
      :address => "MyString",
      :contact_info => "MyString"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input[name=?]", "appointment[name]"

      assert_select "input[name=?]", "appointment[address]"

      assert_select "input[name=?]", "appointment[contact_info]"
    end
  end
end
