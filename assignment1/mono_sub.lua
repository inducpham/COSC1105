--implementation for mono substitution
local str = ""
local lookup = {
        A = nil,
        B = nil,
        C = nil,
        D = nil,
        E = nil,
        F = nil,
        G = nil,
        H = nil,
        I = nil,
        J = nil,
        K = nil,
        L = nil,
        M = nil,
        N = nil,
        O = nil,
        P = nil,
        Q = nil,
        R = nil,
        S = nil,
        T = nil,
        U = nil,
        V = nil,
        W = nil,
        X = nil,
        Y = nil,
        Z = nil
}

local result = ""
for i = 1, #str do
        result = result .. (lookup[str:sub(i, i)] or "-")
end
print(str)
print(result)
