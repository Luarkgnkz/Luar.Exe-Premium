-- Carregar Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Anti Kick/Anti Ban (robusto e indetectável)
do
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall
    local oldIndex     = mt.__index
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if method == "Kick" or method == "Ban" then
            return nil
        end
        return oldNamecall(self, ...)
    end)
    mt.__index = newcclosure(function(self, key)
        if key == "Kick" or key == "Ban" then
            return function() end
        end
        return oldIndex(self, key)
    end)
    setreadonly(mt, true)
end

-- Criar janela principal
local Window = Rayfield:CreateWindow({
    Name = "Luar.Exe Premium V2",
    LoadingTitle = "Luar.Exe Bom E Novo",
    LoadingSubtitle = "By. Luar.Exe",
    ConfigurationSaving = {
        Enabled    = true,
        FolderName = "MeuPainel",
        FileName   = "Config",
    },
    KeySystem   = true,
    KeySettings = {
        Title      = "MoonSec",
        Subtitle   = "Enter Your Key",
        Note       = "Get your key from our Discord",
        FileName   = "MoonsecKey",
        SaveKey    = true,
        KeyLength  = 32,
        Keys       = {
            ["YOUR-MOONSEC-KEY1"] = true,
            ["YOUR-MOONSEC-KEY2"] = true,
        }
    }
})

-- (o resto do script continua exatamente como você já tem, com todas as abas e funcionalidades)
