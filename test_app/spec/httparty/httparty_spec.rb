describe "HTTParty" do
    it 'content-party' do
        stub_request(:get, "https://jsonplaceholder.typicode.com/posts/1").            
            to_return(status: 200, body: "", headers: {
                'content-type': 'application/json'
            })

        response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/1')
        content_type = response.headers['content-type']
        # puts content_type
        expect(content_type).to match(/application\/json/)
    end
end
