# describe 'all', collection: true do #collection: true -> nome da tag para filtrar testes
describe 'all', type: 'collection' do #type: 'collection' -> nome da tag para filtrar testes
#describe 'all', :collection do #:collection -> nome da tag para filtrar testes
  it { expect([1,7,9]).to all((be_odd).and be_an(Integer)) }
  it { expect(['ruby', 'rails']).to all(be_a(String).and include('r')) }
end