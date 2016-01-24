require 'rails_helper'

RSpec.describe "feeds/index", type: :view do
  before(:each) do
    assign(:feeds, [
      Feed.create!(
        :name => "Name",
        :url => "Url",
        :description => "MyText"
      ),
      Feed.create!(
        :name => "Name",
        :url => "Url",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of feeds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
