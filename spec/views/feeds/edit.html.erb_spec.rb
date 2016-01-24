require 'rails_helper'

RSpec.describe "feeds/edit", type: :view do
  before(:each) do
    @feed = assign(:feed, Feed.create!(
      :name => "MyString",
      :url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit feed form" do
    render

    assert_select "form[action=?][method=?]", feed_path(@feed), "post" do

      assert_select "input#feed_name[name=?]", "feed[name]"

      assert_select "input#feed_url[name=?]", "feed[url]"

      assert_select "textarea#feed_description[name=?]", "feed[description]"
    end
  end
end
