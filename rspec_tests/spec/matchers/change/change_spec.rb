require 'contador'

describe 'Matcher change' do
    it { expect {Contador.incremeta}.to change {Contador.qtd} }    
    it { expect {Contador.incremeta}.to change {Contador.qtd}.by(1) } #sofre alteração de uma unidade
    it { expect {Contador.incremeta}.to change {Contador.qtd}.from(2).to(3) } #qtd vai sair de 2 (antes da mudança), para 3 (depois da mudança)
end