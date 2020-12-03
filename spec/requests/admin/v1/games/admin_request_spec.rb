require 'rails_helper'

# RSpec.describe "Admin::v1::games as :admin", type: :request do
#   let(:user) { create(:user) }
  
#   context "GET /games" do
#     let(:url) { "/admin/v1/games" }
#     let!(:games) { create_list(:game, 5) }

#     it "return all games" do 
#       get url, headers: auth_header(user)      
#       expect(body_json['games']).to contain_exactly *games.as_json(only: %i(id mode release_date developer system_requiriment_id))
#     end

#     it "returns success status" do
#       get url, headers: auth_header(user)
#       expect(response).to have_http_status(:ok)
#     end

#   end 
# end
