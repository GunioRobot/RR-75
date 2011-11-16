require 'spec_helper'

describe CarrosController do


  it "deveria listar os carros no index" do
	carros_mock = [mock_model(Carro), mock_model(Carro)]

	Carro.should_receive(:all).and_return(carros_mock)

	get 'index'
	response.should be_success

	assigns[:carros].should == carros_mock
  end

  it "deveria instanciar um carro no index" do
	carro_mock = mock_model(Carro)

	Carro.should_receive(:new).and_return(carro_mock)

	get 'index'
	response.should be_success

	assigns[:carro].should == carro_mock
  end

end
