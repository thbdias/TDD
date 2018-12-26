describe (1..5), 'Ranges' do
  it '#cover' do
    is_expected.to cover(2) #is_expected == expect(subject)
    expect(subject).to cover(2, 5)  #cubra o 2 e 5
    expect(subject).not_to cover(0, 6)  #não cubra o 2 e 5
  end

  it { is_expected.to cover(2) }
  it { is_expected.to cover(2, 5) }
  it { is_expected.not_to cover(0, 6) }
  it { expect(subject).not_to cover(0, 6) }
end