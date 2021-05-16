function bubblesort!(arr::AbstractVector)
    for _ = 2:length(arr), j = 1:length(arr)-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
    return arr
end

function bubblesort(OriginalArr::AbstractVector)
    arr = copy(OriginalArr)
    for _ = 2:length(arr), j = 1:length(arr)-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
    return arr
end

function quicksort!(arr::AbstractVector, i=1, j=length(arr))
    if i < j
        pivot = arr[rand(i:j)]
        left, right = i, j
        while left <= right
            while arr[left] < pivot
                left+=1
            end
            while arr[right] > pivot
                right-=1
            end
            if left <= right
                arr[left], arr[right] = arr[right], arr[left]
                left+=1
                right-=1
            end
            quicksort!(arr, i, right)
            quicksort!(arr, left, j)
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

function convertArrInt(a::Array{String, 1})
    a1 = Array{Int, 1}()
    if length(a) > 0
        for element in a
            element_n = parse(Int, element)
            push!(a1, element_n)
        end
    end
    return a1
end

function main(args::Array{String, 1})
    v = convertArrInt(args)
    println(v)
    v = quicksort!(v)
    println(v)
    v = removeDuplicates(v)
    println(v)
end

function main()
    v = [4, 1, -3, 6, 10, 4]

    println(v)

    v = quicksort!(v)

    println(v)

    v = removeDuplicates(v)

    println(v)
end

if length(ARGS) > 0
    main(ARGS)
else
    main()
end
