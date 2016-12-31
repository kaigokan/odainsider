require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(
        :title => "Title"
      ),
      Theme.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of themes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
