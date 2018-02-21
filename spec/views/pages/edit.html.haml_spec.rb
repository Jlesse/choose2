require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :author_id => 1,
      :parent_option_id => 1
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input#page_author_id[name=?]", "page[author_id]"

      assert_select "input#page_parent_option_id[name=?]", "page[parent_option_id]"
    end
  end
end
