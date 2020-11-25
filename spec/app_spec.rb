require_relative '../app.rb'

RSpec.describe 'app.rb' do
  input_files = Dir.glob('samples/input*.txt').sort
  input_files.each do |input_file|
    nb = input_file.gsub("samples/input", '').gsub('.txt', '')
    it "Returns correct output #{nb}" do
      input = File.open("samples/input#{nb}.txt").readlines.map(&:chomp)
      output = File.open("samples/output#{nb}.txt").readlines.map(&:chomp)
      expect(method_exercise(input)).to eq(output.first)
    end
  end
end
