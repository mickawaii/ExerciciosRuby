class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q"
      def #{attr_name}=(value)
        if @arr == nil
          @arr = [nil]
        end
        
        @arr.push(value)
      end

      def #{attr_name}_history
        return @arr.inspect
      end

      def #{attr_name}_count
        return @arr.length
      end
      "
  end
end

class Foo 
  attr_accessor_with_history :bar
end

f = Foo.new 
f.bar = 1
f.bar = 2
f.bar = 535
puts f.bar_history # => if your code works, should be [nil,1,2]
puts f.bar_count
