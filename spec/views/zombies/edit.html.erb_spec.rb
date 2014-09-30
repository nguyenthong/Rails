require 'rails_helper'

RSpec.describe "zombies/edit", :type => :view do
  before(:each) do
    @zombie = assign(:zombie, Zombie.create!(
      :name => "MyString",
      :bio => "MyText",
      :age => 1
    ))
  end

  it "renders the edit zombie form" do
    render

    assert_select "form[action=?][method=?]", zombie_path(@zombie), "post" do

      assert_select "input#zombie_name[name=?]", "zombie[name]"

      assert_select "textarea#zombie_bio[name=?]", "zombie[bio]"

      assert_select "input#zombie_age[name=?]", "zombie[age]"
    end
  end
end
