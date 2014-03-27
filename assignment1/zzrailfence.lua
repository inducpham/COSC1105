--the second cypher text is encrypted using rail fence cipher with the
--depth of 5
local str = "MIDEDRWOTCIDEDRWOTATCIEMWREPEYIINAIEOTOIEMWREPEYIINWOTASVSAOOAGCLTTSHSLMANVSAOOAGCLTTSOHMPOARRFLNIEHOOWWIPTPOARRFLNIEHOOHERFKISNFHURFKISNF"
print("\n\nQ2. " .. str)

--for rail fence, first find out the way the zig zag traverse
--given depth = 4
for depth = 3, 6 do
        local widths = {}
        local strings = {}
        local index = 0
        local zig = true
        local string = str
        local string_len = #string
        local result = ""

        --setup the widths
        for i = 1, string_len do
                if zig then
                        --zig mean increasing
                        if index == depth - 1 then
                                zig = false
                        end

                        index = index + 1

                else
                        if index == 2 then
                                zig = true
                        end

                        index = index - 1
                end
                
                widths[index] = widths[index] or 0
                widths[index] = widths[index] + 1
        end

        --put the string into arrays
        for i = 1, depth do
                strings[i] = string:sub(1, widths[i])
                string = string:sub(widths[i] + 1)
        end

        zig = true
        index = 0
        --read from the strings
        for i = 1, string_len do
                if zig then
                        --zig mean increasing
                        if index == depth - 1 then
                                zig = false
                        end

                        index = index + 1

                else
                        if index == 2 then
                                zig = true
                        end

                        index = index - 1
                end

                result = result .. strings[index]:sub(1, 1)
                strings[index] = strings[index]:sub(2)
        end
        
        print("D " .. depth .. "\t: " .. result)

end
