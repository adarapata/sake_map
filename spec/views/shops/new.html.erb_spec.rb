require 'rails_helper'

RSpec.describe "shops/new", type: :view do
  before(:each) do
    assign(:shop, Shop.new(
      :name => "MyString",
      :prefecture => 1,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_prefecture[name=?]", "shop[prefecture]"

      assert_select "input#shop_address[name=?]", "shop[address]"

      assert_select "input#shop_latitude[name=?]", "shop[latitude]"

      assert_select "input#shop_longitude[name=?]", "shop[longitude]"
    end
  end
end
