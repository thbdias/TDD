RSpec::Matchers.define_negated_matcher :an_array_excluding, :include # :an_array_excluding -> pode ser qualquer nome (:exclude)

describe Array.new([1,2,3]), "Array de teste" do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1)        
  end

  it { expect(subject).to an_array_excluding(4) } #não deve conter o 4 

  it '#contain_exactly' do
    expect(subject).to contain_exactly(2,3,1)
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3])
  end
  
end