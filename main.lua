-- // ==========================================
-- // LEON4951 - UPDATE & LOADER SCRIPT
-- // ==========================================

-- Loader otomatis dari GitHub Anda
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n01771542-cmd/faluahub/main/faluahub.lua"))()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- // Hapus UI lama jika ada agar tidak menumpuk
if playerGui:FindFirstChild("Leon4951UpdateGui") then
    playerGui.Leon4951UpdateGui:Destroy()
end

-- // Membuat ScreenGui Utama
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Leon4951UpdateGui"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- // Main Frame (Tampilan Simpel & Rapi)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 320, 0, 200)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = mainFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(45, 45, 45)
uiStroke.Thickness = 2
uiStroke.Parent = mainFrame

-- // Tombol Besar: LINK SALURAN WA
local waButton = Instance.new("TextButton")
waButton.Name = "WAButton"
waButton.Size = UDim2.new(0, 280, 0, 50)
waButton.Position = UDim2.new(0.5, -140, 0, 30)
waButton.BackgroundColor3 = Color3.fromRGB(37, 211, 102) -- Warna Hijau WhatsApp
waButton.BorderSizePixel = 0
waButton.Font = Enum.Font.GothamBold
waButton.Text = "LINK SALURAN WA"
waButton.TextColor3 = Color3.fromRGB(255, 255, 255)
waButton.TextSize = 16
waButton.Parent = mainFrame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = waButton

-- // Teks Keterangan di Bawah Tombol
local infoLabel = Instance.new("TextLabel")
infoLabel.Name = "InfoLabel"
infoLabel.Size = UDim2.new(0, 280, 0, 70)
infoLabel.Position = UDim2.new(0.5, -140, 0, 95)
infoLabel.BackgroundTransparency = 1
infoLabel.Font = Enum.Font.GothamMedium
infoLabel.Text = "SCRIPT SEDANG DI PERBAIKI AMBIL SCRIPT LEON4951 YANG BARU."
infoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
infoLabel.TextSize = 13
infoLabel.TextWrapped = true
infoLabel.TextXAlignment = Enum.TextXAlignment.Center
infoLabel.TextYAlignment = Enum.TextYAlignment.Top
infoLabel.Parent = mainFrame

-- // Fungsi Otomatis Salin Link Saluran WA Saat Tombol Dipencet
waButton.MouseButton1Click:Connect(function()
    local waLink = "https://whatsapp.com/channel/0029VbDq74VHgZWbi0AdSa1L"
    
    if setclipboard then
        setclipboard(waLink)
        waButton.Text = "LINK BERHASIL DISALIN!"
        task.wait(1.5)
        waButton.Text = "LINK SALURAN WA"
    else
        waButton.Text = "GAGAL MENYALIN (TIDAK DIDUKUNG)"
        task.wait(1.5)
        waButton.Text = "LINK SALURAN WA"
    end
end)
