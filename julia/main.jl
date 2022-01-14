function is_prime_v1(num::Int64)::Bool
    if num <= 1
        return false
    end

    for i in 2:num
        if num % i == 0
            return false
        end
    end

    return true
end

function is_prime_v2(num::Int64)::Bool
    if num <= 1
        return false
    end

    for i in 2:floor(sqrt(num) + 1)
        if num % i == 0
            return false
        end
    end

    # i = 2
    # while i * i <= num
    #     if num % i == 0
    #         return false
    #     end
    #     i += 1
    # end

    return true
end

function is_prime_v3(num::Int64)::Bool
    if num <= 1
        return false
    end

    if num == 2
        return true
    end

    if num % 2 == 0
        return false
    end

    for i in 3:2:floor(sqrt(num) + 1)
        if num % i == 0
            return false
        end
    end

    # i = 3
    # while i * i <= num
    #     if num % i == 0
    #         return false
    #     end
    #     i += 2
    # end

    return true
end

function is_prime_v4(num::Int64)::Bool
    if num <= 1
        return false
    end

    if num <= 3
        return true
    end

    if num % 2 == 0 || num % 3 == 0
        return false
    end

    for i in 5:6:floor(sqrt(num) + 1)
        if num % i == 0 || num % (i + 2) == 0
            return false
        end
    end

    # i = 5
    # while i * i <= num
    #     if num % i == 0 || num % (i + 2) == 0
    #         return false
    #     end
    #     i += 6
    # end

    return true
end

numbers = [rand(0:1000) for _ in 1:100000]

@time for i in numbers
    is_prime_v1(i)
end

@time for i in numbers
    is_prime_v2(i)
end

@time for i in numbers
    is_prime_v3(i)
end

@time for i in numbers
    is_prime_v4(i)
end
