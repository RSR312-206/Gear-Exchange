 def find_range(comparison)
      comparison_arr = []
      low_range = 50 - 50
      high_range = 50 + 50
      if (low_range..high_range) === comparison
        comparison_arr.push(comparison)
      end
      puts comparison_arr
    end

  find_rand(344)
