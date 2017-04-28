def tribonacci(signature,n)
  # KEEP GOING UNTIL THE length IS N
  # count from 2 till n, append the sum of the last three numbers
  if n == 0
    return []
  elsif n == 1
    return [signature[0]]
  elsif n == 2
    return [signature[0], signature[1]]
  end

  count = 2
  while count < n-1
    signature.push(signature[count] + signature[count-1] + signature[count-2])
    count += 1
  end

  signature
end
