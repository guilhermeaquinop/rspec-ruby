require "Calculo"

RSpec.describe Calculo do
  # Instanciando a class Calculo
  subject(:calculo) {described_class.new(number)}

  # Teste do method da class Calculo
  describe "#soma" do

    # Valor passado no teste (Contexto)
    context "Se a soma for correta" do

      let(:number) {2}
      # Execucao do teste, passando o valor esperado do resultado do teste
      it "retorna o resultado da soma" do
        expect(calculo.soma).to eq(4)  
      end

    end

    context "Se a soma for invalida" do

      let(:number) {'1'}
      it "retorna false" do
        expect(calculo.soma).to eq(false)  
      end

    end

    context "Se a subtracao for correta" do
      let(:number) {2}
      it "retorna o resultado igual a 0" do
        expect(calculo.subtracao).to eq(0) 
      end
      
    end
    

  end
  
end