local str = ""
--implementation for ceacar cipher
local a = string.byte("A")

for shift = 1, 26 do
        local result = ""
        for i = 1, #str do
                result = result .. string.char((a + (str:byte(i) - a + shift) % 26))
        end
        print("S " .. shift .. ":\t" .. result)
end
