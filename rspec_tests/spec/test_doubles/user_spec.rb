describe 'Test Double' do
    it '--' do
        user = double('User')
        # allow(user).to receive_messages(name: 'Thiago', password: 'secret') #Thiago é o retorno, name: e password são messages (métodos)
        allow(user).to receive(:name).and_return('Thiago')
        allow(user).to receive(:password).and_return('secret')
        puts user.name
        puts user.password
    end
end