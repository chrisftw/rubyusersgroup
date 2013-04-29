require 'spec_helper'

describe "memberships/index" do
  before(:each) do
    assign(:memberships, [
      stub_model(Membership,
        :user_id => "User",
        :group_id => "Group",
        :permission_mask => 1
      ),
      stub_model(Membership,
        :user_id => "User",
        :group_id => "Group",
        :permission_mask => 1
      )
    ])
  end

  it "renders a list of memberships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
