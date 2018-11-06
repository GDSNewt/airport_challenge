class Weather

def stormy?
random_condition == :stormy
puts "It is too stormy to land"
end

private

CONDITIONS = [:stormy, :clear, :clear, :clear]

def randon_condition
CONDITIONS.sample
end
end
