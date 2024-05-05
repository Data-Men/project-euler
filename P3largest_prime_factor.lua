-- The prime factors of 13195 are  5,7,13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

FACTORS = {}

function IS_PRIME(n)
    local count = 2
    local limit = math.floor(math.sqrt(n))
    while count < limit do
        if n % count == 0 then
            return false
        end
        count = count + 1
    end
    return true
end

function FACTOR(n)
    N = math.floor(math.sqrt(n))
    for i = 2, N, 1 do
        if IS_PRIME(i) then
            if n % i == 0 then
                n = n / i
                table.insert(FACTORS, i)
            end
        end
    end
end

FACTOR(arg[1])

for key, value in pairs(FACTORS) do
    print(key, value)
end
