require 'rails_helper'

RSpec.describe "zombies/index", :type => :view do
  before(:each) do
    assign(:zombies, [
      Zombie.create!(
        :name => "Name",
        :bio => "MyText",
        :age => 1
      ),
      Zombie.create!(
        :name => "Name",
        :bio => "MyText",
        :age => 1
      )
    ])
  end

  it "renders a list of zombies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
