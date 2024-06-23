def add(a, b)
    return a + b
end

payroll, rent, marketing, leased_equipment, utilities, insurance, benefits = 6266, 2000, 1000, 150, 125, 75, 1567

total_costs = add(payroll, add(rent, add(marketing, add(leased_equipment, add(utilities, add(insurance, benefits))))))
puts "Total Costs: #{total_costs}"