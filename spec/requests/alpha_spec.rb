# require 'rails_helper'

RSpec.describe "Alphas", type: :request do
  let(:b_mock) { instance_double(AlphaRunner, run: '') }
  describe "GET /index" do
    it "returns status code of 200" do
      get '/alpha'
      expect(response).to have_http_status(200)
    end
    it "returns all the alphas" do
      get '/alpha'
      expected = JSON.parse(response.body)
      expect(expected.size).to be>=0
    end
    # it "returns all the alphas" do
    #   get '/alpha'
    #   expected = JSON.parse(response.body)
    #   expect(expected).to be_a Alpha
    # end
    # let(:a) { AlphaController.new }

    it "calls the runner class" do
      allow(AlphaRunner).to receive(:new).and_return(b_mock)

      # a.test
      get '/alpha'

      expect(b_mock).to have_received(:run)
    end
  end
end
