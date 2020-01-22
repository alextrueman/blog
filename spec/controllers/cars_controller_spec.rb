require 'rails_helper'

RSpec.describe CarsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      car = FactoryBot.create(:car)
      get :show, params: { id: car.id }
      expect(response).to have_http_status(:success)
    end
  end

end
