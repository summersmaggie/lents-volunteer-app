require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :name => "Name",
        :address => "Address",
        :contact_info => "Contact Info"
      ),
      Appointment.create!(
        :name => "Name",
        :address => "Address",
        :contact_info => "Contact Info"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Info".to_s, :count => 2
  end
end
