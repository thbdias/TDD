describe "HTTParty" do
    # it 'content-party', :vcr do
    it 'content-party', vcr: {cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body]} do
        # stub_request(:get, "https://jsonplaceholder.typicode.com/posts/1").            
        #     to_return(status: 200, body: "", headers: {
        #         'content-type': 'application/json'
        #     })

        #VCR.use_cassette("jsonplaceholder/posts") do
            response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/6')
            content_type = response.headers['content-type']
            # puts content_type
            expect(content_type).to match(/application\/json/)
        #end
    end
end
