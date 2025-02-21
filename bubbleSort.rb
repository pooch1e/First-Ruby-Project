# frozen_string_literal: true

# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology
#
#
#
bubbles = [12, 3, 4, 7, 32, 5, 8]
def bubble_sort(sortme)
  # p sortme.sort cheating
  a_length = sortme.size

  loop do
    swapped = false
    (a_length - 1).times do |i|
      if sortme[i] > sortme[i + 1]
        sortme[i], sortme[i + 1] = sortme[i + 1], sortme[i]
        swapped = true
      end
    end
    break unless swapped
  end

  p sortme
end

bubble_sort(bubbles)
