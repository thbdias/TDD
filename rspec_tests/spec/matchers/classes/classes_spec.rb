describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer)  # Exatamente a classe
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) #Pode ser por herança - testa toda herança 
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size) #responde ao método size
    expect("ruby").to respond_to(:count) #responde ao método count
  end

  it 'be_an' do
    
  end
end