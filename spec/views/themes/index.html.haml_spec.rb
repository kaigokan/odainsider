require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(
        :title => "Title1"
      ),
      Theme.create!(
        :title => "Title2"
      )
    ])
  end

  it "renders a list of themes" do
    render
    assert_select "tr>td", :text => /Title.*/, :count => 2
  end
end
