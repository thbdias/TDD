#variável global
$counter = 0

describe 'let' do
  let(:count) { $count += 1}

  it 'memoriza o valor' do
    expect(count).to eq(1) #1a vez -> let é invocado pq é usado pela 1a vez
    expect(count).to eq(1) #2a Cache -> let não é invocado novamente
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) #1a vez que let é invocado
    
  end
end