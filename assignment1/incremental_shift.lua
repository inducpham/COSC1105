--the third text is encrypted as described in exercise 2.5. A char is
--shifted forward n char with n being its current position in text
local str = "UJH UXVJUOXE OGU KHFQAA MOU EC MPDRXR ASL ZFYIMIXRHOO EYY IG KCDNBVYEY QCWQ VE JDZJ RVXGY FWCSV EIIC"
local a = string.byte("A")
local space = string.byte(" ")
local result = ""

print("\n\nQ3. " .. str)

for i = 1, #str do
        local c = str:byte(i)
        if c ~= space then
                c = a + (26 + (c - a) - (i % 26)) % 26
        end

        result = result .. string.char(c)
end
print(result)
