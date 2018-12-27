RSpec::Matchers.define :be_a_multiple_of do |expected| #expected == 3
    match do |actual|  #actual == subject == 18
        actual % expected == 0
    end

    failure_message do |actual|
        "expected that #{actual} would be a multiple of #{expected} <<<"
    end

    description do
        "bbbbe a multiple of #{expected} ****"
    end
end

describe 18, 'Custom Matcher' do
    it { is_expected.to be_a_multiple_of(3) }
end