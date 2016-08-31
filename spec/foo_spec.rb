# http://betterspecs.org/
# For examples of mocks, see https://github.com/rspec/rspec-mocks

module Foo
  describe Foo do
    subject { Foo.new }

    it 'provides a passing example' do
      expect(true).to be true
    end

    it { is_expected.to be_a Foo }

    context 'sample shared example' do
      subject { false }
      it_behaves_like 'falsey thing'
    end

    context 'sample shared context' do
      include_context 'stubbed things'

      subject { baz }
      it { is_expected.to eq(3) }
    end
  end
end
