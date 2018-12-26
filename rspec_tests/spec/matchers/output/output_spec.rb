describe 'Matcher output' do
  it { expect{puts "thiago"}.to output.to_stdout }
  it { expect{print "thiago"}.to output("thiago").to_stdout }
  it { expect{puts "thiago henrique"}.to output(/thiago/).to_stdout }
  
  it { expect{warn "thiago"}.to output.to_stderr }
  it { expect{warn "thiago"}.to output("thiago\n").to_stderr }
  it { expect{warn "thiago henrique"}.to output(/thiago/).to_stderr }
end