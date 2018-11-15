a = [1,2,-3,2,-3,-4,6,2,-2,3]

def join_iter(state,nums)
  return if state == nums.length - 1
  if nums[state] * nums[state + 1] > 0
    nums[state,2] = nums[state,2].sum
    join_iter(state,nums)
  end
  join_iter(state + 1,nums)
end

join_iter(0,a)
p a
