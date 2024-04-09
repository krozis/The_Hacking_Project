tab = []
tmp = 1

while tmp <= 50
	nb = "#{tmp / 10}#{tmp % 10}"
	tab << "jean.dupont.#{nb}@email.fr"
	tmp += 1
end

=begin
Not asked to display the result. If needed to, use the following command line:

puts tab

=end