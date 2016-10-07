require "spec_helper"

describe DDG::Wrapper do
  it "has a version number" do
    expect(DDG::Wrapper::VERSION).not_to be nil
  end
end

describe DDG::Wrapper::Client do
	before(:all) do
    @client = DDG::Wrapper::Client.new
    @params = @client.build_params('test')
    @custom_params = @client.build_params('rspec','ruby','0')
  end

  describe '#initialize client' do
    context 'checking url' do
      it { expect(@client.url).to eq('http://api.duckduckgo.com/') }
    end
  end

	describe '#initialize paramters' do
    context 'checking parameters' do
      it { expect(@params[:q]).to eq('test') }
      it { expect(@params[:format]).to eq('json') }
      it { expect(@params[:pretty]).to eq('1') }
    end
  end

  describe '#initialize custome paramters' do
    context 'checking parameters' do
      it { expect(@custom_params[:q]).to eq('rspec') }
      it { expect(@custom_params[:format]).to eq('ruby') }
      it { expect(@custom_params[:pretty]).to eq('0') }
    end
  end
end
