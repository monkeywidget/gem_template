module Foo
  shared_examples 'fatal error' do
    # it 'logs a fatal failure' do
    #   expect(@logger).to receive(:fatal)
    #   expect { subject }.to raise_exception
    # end
    #
    # it 'exits' do
    #   expect { subject }.to raise_exception SystemExit
    # end
  end

  shared_examples 'falsey thing' do
    it { is_expected.to be_falsey }
  end
end
