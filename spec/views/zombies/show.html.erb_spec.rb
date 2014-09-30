require 'rails_helper'

RSpec.describe "zombies/show", :type => :view do
  before(:each) do
    @zombie = assign(:zombie, Zombie.create!(
      :name => "Name",
      :bio => "MyText",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
