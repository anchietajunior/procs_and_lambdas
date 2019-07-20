multi = lambda do |m, arr|
  if arr.empty?
    m
  else
    multi.call(m + arr.first, arr.drop(1))
  end
end