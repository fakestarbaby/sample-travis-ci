require 'spec_helper'

describe "blogs/new.html.erb" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :title => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path, :method => "post" do
      assert_select "input#blog_title", :name => "blog[title]"
      assert_select "textarea#blog_body", :name => "blog[body]"
    end
  end
end
