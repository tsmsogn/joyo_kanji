class MyString < String
  include JoyoKanji
end

RSpec.describe JoyoKanji do
  it "has a version number" do
    expect(JoyoKanji::VERSION).not_to be nil
  end

  describe '.joyo_kanji_list?' do
    it 'works' do
      expect(JoyoKanji.joyo_kanji_list.count).to eq 2136
    end
  end

  describe '.joyo_kanji?' do
    it 'works' do
      expect(JoyoKanji.joyo_kanji?('a')).to be_falsey
      expect(JoyoKanji.joyo_kanji?('阿')).to be_falsey
      expect(JoyoKanji.joyo_kanji?('阿良々木')).to be_falsey
      expect(JoyoKanji.joyo_kanji?('忍')).to be_truthy
      expect(JoyoKanji.joyo_kanji?('忍野')).to be_truthy
    end
  end

  describe '#joyo_kanji?' do
    it 'is includable' do
      expect(MyString.new('忍野').joyo_kanji?).to be_truthy
    end
  end

  describe '#joyo_kanji?' do
    it 'is extendable' do
      expect('忍野'.extend(JoyoKanji).joyo_kanji?).to be_truthy
    end
  end
end
