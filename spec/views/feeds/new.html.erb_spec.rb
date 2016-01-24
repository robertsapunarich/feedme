require 'rails_helper'

RSpec.describe "feeds/new", type: :view do
  before(:each) do
    assign(:feed, Feed.new(
      :name => "MyString",
      :url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new feed form" do
    render

    assert_select "form[action=?][method=?]", feeds_path, "post" do

      assert_select "input#feed_name[name=?]", "feed[name]"

      assert_select "input#feed_url[name=?]", "feed[url]"

      assert_select "textarea#feed_description[name=?]", "feed[description]"
    end
  end
end
