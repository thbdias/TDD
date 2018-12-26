describe 'Predicados' do

    #substitui ? por be_

  it 'odd' do
    expect(1).to be_odd # mais legível
    #expect(2.odd?).to be true # são iguais
  end

  it 'even' do
    expect(2).to be_even # mais legível
  end
end