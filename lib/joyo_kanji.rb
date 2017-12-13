require 'csv'
require "joyo_kanji/version"

module JoyoKanji
  PATH_TO_CSV = File.expand_path('../../data/joyo_kanji.csv', __FILE__)

  def self.list
    @joyo_kanji ||= load_joyo_kanji
  end

  def self.joyo_kanji?(characters)
    characters.split('').all? { |c| list.include?(c) }
  end

  def self.load_joyo_kanji
    @joyo_kanji =
      CSV.read(PATH_TO_CSV).map do |row|
        row[1]
      end
  end

  module ClassMethods
    def joyo_kanji?
      JoyoKanji.joyo_kanji?(self)
    end
  end

  def self.included(klass)
    klass.include(ClassMethods)
  end

  def self.extended(klass)
    klass.extend(ClassMethods)
  end
end
