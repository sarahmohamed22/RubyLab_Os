
class ComplexNumber
    @@counter={:addition=>0,:multiplication=>0}
    attr_accessor :real,:imag
    def initialize(real,imag)
        @real=real
        @imag=imag
    end

    def +(comp)
        res=ComplexNumber.new(0,0)
        res.real=self.real+comp.real
        res.imag=self.imag+comp.imag
         

        return res
    end

    def *(comp)
        res=ComplexNumber.new(0,0)
        res.real=(self.real*comp.real)-(self.imag*comp.imag)
        res.imag=(self.real*comp.imag)+(self.imag*comp.real)
        # counter[:multiplication+1] 
        return res
    end

    def self.bulk_add(comps)
        sum=ComplexNumber.new(0,0)
        comps.each do |comp|
           sum=sum+comp
        end
        return sum
    end

    def self.bulk_multiply(comps)
        multi=ComplexNumber.new(1,1)
        comps.each do |comp|
           multi=multi*comp
        end
        return multi
    end

end
complex1=ComplexNumber.new(3,3)
complex2=ComplexNumber.new(5,3)

result=complex1+complex2
puts "sum is #{result.real} +  #{result.imag} i"

result=complex1*complex2
puts "multiplication is #{result.real} +  #{result.imag} i"

arr1=[3+3i,5+6i]
sumbulk=ComplexNumber.bulk_add(arr1)
puts "the bulk sum  is #{sumbulk.real} + #{sumbulk.imag} i"

arr1=[3+3i,5+6i]
multibulk=ComplexNumber.bulk_multiply(arr1)
puts "the bulk multiplication is #{multibulk.real} + #{multibulk.imag} i"




