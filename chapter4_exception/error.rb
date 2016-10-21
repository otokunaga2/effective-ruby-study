class TemperatureError < StandardError
  attr_reader(:temperature)
  def initialize (temperature)
    @temperature = temperature
    super("invalid temperature: #{@temperature}")
  end
end
class MatrixError < StandardError
  attr_reader(:error_info)
  def initialize (error_info)
    @error = error_info
    super("invalid #{@error}: some message")
  end
end
class CoffeeTooWeakError < StandardError; end
class ListEmptyError < StandardError; end

begin
  raise(MatrixError.new("invalid number of argument"))
rescue => e
  p e
end

begin 
  raise(CoffeeTooWeakError,"coffee to water ratio too low")
rescue => e
  p e
end

begin
  nil.length
rescue NoMethodError => e
  p e
end
temp_list = []
begin
  raise(ListEmptyError,"list is empty for some methods") if temp_list.length == 0
rescue => e
  p e
end
