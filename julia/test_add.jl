module TestAdd
    using Test
    include("add.jl")

    function main()
        @test Add.add(1, 5) == 4
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    using. TestAdd
    TestAdd.main()
end
