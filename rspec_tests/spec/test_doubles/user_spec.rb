describe 'Test Double' do
    it '--' do
        user = double('User')
        # allow(user).to receive_messages(name: 'Thiago', password: 'secret') #Thiago é o retorno, name: e password são messages (métodos)
        allow(user).to receive(:name).and_return('Thiago')
        allow(user).to receive(:password).and_return('secret')
        puts user.name
        puts user.password
    end
   
   
    it '-as_null_object' do
        user = double('User').as_null_object #qualquer chamada ao doublê, se levantar msg de erro ele vai ignorar
        allow(user).to receive(:name).and_return('Thiago')
        allow(user).to receive(:password).and_return('secret')
        puts user.name
        puts user.password
        user.abc
    end
end