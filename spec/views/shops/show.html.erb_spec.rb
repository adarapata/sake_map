require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "Name",
      :prefecture => 1,
      :address => "Address",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
