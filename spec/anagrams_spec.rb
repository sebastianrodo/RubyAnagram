require_relative '../anagrams'

RSpec.describe Anagram do
  describe 'search anagrams in the list' do
    subject { instance.search_anagrams(word) }

    let!(:instance) { described_class.new }
    context 'with anagram found' do
      let(:word) { 'weird' }

      it 'expect return the anagrams found' do
        expect(subject).to match_array ["weird", "wider", "wired"]
      end
    end

    context 'without anagram found' do
      let(:word) { 'try' }

      it 'expect return any anagram found' do
        expect(subject).to match_array([])
      end
    end
  end

  describe 'get anagrams' do
    subject { instance.get_anagrams }

    let!(:instance) { described_class.new }

    it { expect(subject).to be_kind_of(Hash) }
    it { expect(subject.values.first.size).to be > 1 }
  end

  describe 'get ananagrams' do
    subject { instance.get_ananagrams }

    let!(:instance) { described_class.new }

    it { expect(subject).to be_kind_of(Hash) }
    it { expect(subject.values.first.size).to eq(1) }
  end

end
