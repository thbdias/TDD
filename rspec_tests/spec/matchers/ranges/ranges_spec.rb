describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2) #cubra o 2
    expect(subject).to cover(2, 5)  #cubra o 2 e 5
    expect(subject).not_to cover(0, 6)  #não cubra o 2 e 5
  end
end