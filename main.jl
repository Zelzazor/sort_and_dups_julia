function bubblesort!(arr::AbstractVector)
    for _ = 2:length(arr), j = 1:length(arr)-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
    return arr
end

function removeDuplicates(arr::AbstractVector)
    filterArr = Vector{eltype(arr)}()
    if length(arr) > 0
        last_element = arr[1]
        push!(filterArr, last_element)
        for element in arr
            if element != last_element
                last_element = element
                push!(filterArr, last_element)
            end
        end
    end
    return filterArr
end

function main(args::Array{String, 1})

end

function main()
    v = [4, 1, -3, 6, 10, 4]

    println(v)

    bubblesort!(v)

    println(v)

    v = removeDuplicates(v)

    println(v)
end

if length(ARGS) > 0
    main(ARGS)
else
    main()
end
