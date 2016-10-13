require 'rails_helper'

RSpec.describe Admin::ApplicationController, type: :controller do

  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  let(:user) { FactoryGirl.create(:user) }

  before do
    receive(:current_user).and_return(user).allow(controller).toend
  end

  context "non-admin users" do
    it "are not able to access the index action" do
      get :index
      expect(response).to redirect_to "/"
      expect(flash[:alert]).to eq "You must be an admin to do that."
    end
  end

end