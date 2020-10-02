require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  result = {}
  cart.each do |food|
    food.each do |key, value|    
     coupons.each do |coupon|
      if food[key] == coupon[:item] && food[:count] > coupon[:num]
        food[:count] =  food[:count] - coupon[:num]
        if result["#{food} W/COUPON"]
          result["#{food} W/COUPON"][:count] += 1
        else
          result["#{food} W/COUPON"] = {:price => coupon[:cost]/coupon[:num], :clearance => food[:clearance], :count => coupon[:num]}
        end
      end
    end
     result[key] = value
  end
  end
  result
    binding.pry
  end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
