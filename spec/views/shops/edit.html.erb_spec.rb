require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "MyString",
      :prefecture => 1,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_prefecture[name=?]", "shop[prefecture]"

      assert_select "input#shop_address[name=?]", "shop[address]"

      assert_select "input#shop_latitude[name=?]", "shop[latitude]"

      assert_select "input#shop_longitude[name=?]", "shop[longitude]"
    end
  end
end
