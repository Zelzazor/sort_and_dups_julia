function bubblesort!(arr::AbstractVector)
    for _ = 2:length(arr), j = 1:length(arr)-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
    return arr
end

function removeDuplicates(arr::AbstractVector)

end

v = [4, 1, -3, 6, 10, 4]

println(v)

bubblesort!(v)

println(v)