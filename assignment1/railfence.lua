local str = ""

--implementation for non zigzag railfence
for depth = 3, 10 do
        local result = ""
        local width = math.ceil(#str / depth)
        local index
        for i = 1, width do
                for j = 0, depth - 1 do
                        index = width * j + i
                        if index <= #str then
                                result = result .. str:sub(index, index)
                        end
                end
        end

        print("D " .. depth .. ":\t" .. result)
end
