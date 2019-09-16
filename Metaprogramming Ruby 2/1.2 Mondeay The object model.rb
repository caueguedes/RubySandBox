## Refinements
module StringExtensions
  refine String do
    def reverse
      "esrever"
    end
  end
end

module StringStuff
  using StringExtensions
  "my_string".reverse # => "esrever"
end

# ##Method Execution
# class MyClass
#   def testing_self
#     @var = 10
#     my_method()
#     self
#   end
#
#   def my_method
#     @var = @var + 1
#   end
# end
# obj = MyClass.new
# obj.testing_self # =>   obj.testing_self # => #<MyClass:0x007f93ab08a728 @var=11>

# def my_method
#   temp = @x + 1
#   my_other_method(temp)
# end


# ##Method Lookup
# require 'awesome_print'
#
# local_time = {:city => "Rome", :now => Time.now}
# ap local_time, :indent => 2
# # module M1; end
# #
# # module M2
# #   include M1
# # end
# #
# # module M3
# #   prepend M1
# #   include M2
# # end
# #
# # M3.ancestors # => [M1, M2, M3]
#
# # module M1
# #   def my_method
# #     'M1#my_method()'
# #   end
# # end
# #
# # class C
# #   include M1 #  add the module above the including class
# #   prepend M1 #  add the module below the including class
# # end
# #
# # class D < C; end
# #
# # D.ancestors # => [D, C, M1, Object, Kernel, BasicObject]
#
# # class MyClass
# #   def my_method; 'my_method()'; end
# # end
# #
# # class MySubClass < MyClass
# # end
# #
# # obj = MySubClass.new
# # obj.my_method()       # => my_method()
# # obj.ancestors # => [D2, M2, C2, Object, Kernel, BasicObject]

# ## Namespacing
# #  load('file.rb', true) Loads the file and address a anonymous namespace to it
# module BookWorm
#   class Text
#   end
# end

# ## CONSTANTS
# # module M
# #   class C
# #     module M2
# #       Module.nesting # => [M::C::M2, M::C, M]
# #     end
# #   end
# # end
#
# # Y = 'a root-level constant'
# # module M
# #   Y = 'a constant in M'
# #   Y             # => "a constant in M"
# #   ::Y           # => "a root-level constant"
# # end
#
# # module M
# #   class C
# #     X = 'a constant'
# #   end
# #   C::X # => "a constant"
# # end
# #
# # M::C::X # => "a constant"
#
# # module MyModule
# #   MyConstant = 'Outer constant'
# #
# #   class MyClass
# #     MyConstant = 'Inner constant'
# #   end
# # end


# ##INSIDE THE OBJECT MODEL
# class MyClass
#   def my_method
#     @v = 1
#   end
# end
#
# obj = MyClass.new
# obj.class # => MyClass


# ## THE PROBLEM WITH OPEN CLASSES
# class Array
#   def replace(original, replacement)
#     self.map {|e| e == original ? replacement : e }
#   end
# end
#
# def test_replace
#   original = ['one', 'two', 'one', 'three']
#   replaced = original.replace('one', 'zero')
#   assert_equal ['zero', 'two', 'zero', 'three'], replaced
# end
#
# def replace(array, original, replacement)
#   array.map {|e| e == original ? replacement : e }
# end
# def test_replace
#   original = ['one', 'two', 'one', 'three']
#   replaced = replace(original, 'one', 'zero')
#   assert_equal ['zero', 'two', 'zero', 'three'], replaced
# end


# ## INSIDE CLASSES DEFINITIONS
# # # Money gem alters the Numeric class and add a method called money as follow
# # class Numeric
# #   def to_money(currency = nil)
# #     Money.from_numeric(self, currency || Money.default_currency)
# #   end
# # end
#
# require 'money'
#
# bargain_price = Money.from_numeric(99, "USD")
# bargain_price.format # => "$99.00"
#
# standart_price = 100.to_money("USD")
# standart_price.format # => "$100.00"
#


## OPEN CLASSES
# class String
#   def to_alphanumeric
#     gsub(/[^\w\s]/, '')
#   end
# end
#
# class StringExtensionsTest < Test::Unit::TestCase
#   def test_strip_non_alphanumeric_characters
#     assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
#   end
# end
#
# def to_alphanumeric(s)
#   s.gsub(/[^|w\s]/, '')
# end
#
# class ToAlphanumericTest < Test::Unit::TestCase
#   def test_strip_non_alphanumeric_characters
#     assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
#   end
# end