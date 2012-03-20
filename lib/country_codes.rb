require "yaml"
require "country_codes/version"

module CountryCodes
  extend self

  DICTIONARY = YAML.load_file(File.expand_path(File.join("..", "country_codes", "dictionary.yml"), __FILE__)).freeze

  class Entry < Struct.new(:name, :calling_code, :code) ; end

  def from_phone_number(number)
    entries = DICTIONARY.sort { |a, b| b['calling_code'] <=> a['calling_code'] }

    entry = entries.select do |e|
      number =~ /\+#{e['calling_code']}\d+$/
    end.first

    if entry
      Entry.new(entry['name'], entry['calling_code'], nil)
    else
      nil
    end
  end
end
