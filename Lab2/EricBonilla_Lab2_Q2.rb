#Eric Bonilla
#COEN 164 Lab 2
#4-14-16

puts "\n 2. Mysterious Total\n"
def mysterious_total(subtotal: "subtotal", tax: "tax", discount: "discount")
  subtotal + tax - discount
end

puts mysterious_total(subtotal: 100, tax: 10, discount: 5)
print "with switched order: "
puts mysterious_total(subtotal: 100, discount: 5, tax: 10)


puts "\nWith double splat: "
def mysterious_splat(subtotal, **rest)
  subtotal + tax - discount
end
puts mysterious_total(subtotal: 100, discount: 5, tax: 10)
