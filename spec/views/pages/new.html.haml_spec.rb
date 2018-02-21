require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      :author_id => 1,
      :parent_option_id => 1
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input#page_author_id[name=?]", "page[author_id]"

      assert_select "input#page_parent_option_id[name=?]", "page[parent_option_id]"
    end
  end
end
