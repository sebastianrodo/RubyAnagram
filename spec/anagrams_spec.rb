require_relative '../anagrams'

RSpec.describe 'Anagrams' do
  context "" do
    it "should return the array of valid words" do
      valid_words = @a.solve("art")
      expect(valid_words).to be_kind_of(Array)
      expect(valid_words).to_not be_empty
    end
  end
end
