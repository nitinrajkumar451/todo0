RSpec.describe "Alphas", type: :request do
    let(:b_mock) { instance_double(AlphaRepository, find_all_alphas:'result') }
    describe "GET /index" do
     
      it "calls the repository class" do
        allow(AlphaRepository).to receive(:new).and_return(b_mock)
  
        # a.test
        AlphaRepository.new.find_all_alphas
  
        expect(b_mock).to have_received(:find_all_alphas)
      end
    end
  end
  