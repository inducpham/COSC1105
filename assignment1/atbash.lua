--the first cipher text is encrypted by atbash cipher
local str = "GSV JFVHGRLM LU DSVGSVI XLNKFGVIH XZM GSRMP RH ORPV GSV JFVHGRLM LU DSVGSVI HFYNZIRMVH XZM HDRN"

print("Q1. " .. str)
local result = ""
local a = string.byte("A")
local space = string.byte(" ")

for i = 1, #str do
        local c = str:byte(i)
        if c ~= space then
                c = (25 - c + a) + a
        end

        result = result .. string.char(c)
end
print(result)
