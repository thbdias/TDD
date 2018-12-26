$count = 0

describe 'let!' do
  ordem_de_invocacao = []

  #'let' sem '!' seria executado somente na hora que chegasse na linha 16 (xpect(contador).to eq(1))
  let!(:contador) do
    ordem_de_invocacao << :let! #joga no vetor a string let!
    $count += 1
  end

  #ao se iniciar esse teste o let já é invocado
  it 'chama o método helper antes do teste' do
    ordem_de_invocacao << :exemplo #add string exemplo dentro do vetor
    expect(ordem_de_invocacao).to eq([:let!, :exemplo])
    expect(contador).to eq(1)
  end
end