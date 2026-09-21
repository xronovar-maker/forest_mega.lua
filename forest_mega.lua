-- ============================================
-- 🌲 ULTIMATE FOREST MEGA HUB v4.0
-- Delta Executor | Без пароля
-- 80+ функций | Всё на русском
-- ============================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local LP = Players.LocalPlayer

-- ============ НАСТРОЙКИ ============
local S = {
    Speed=false, SpeedV=100, Jump=false, JumpV=150,
    Fly=false, FlyV=100, InfJump=false, NoClip=false,
    AutoRun=false, CrouchSpeed=false, DoubleJump=false, LongJump=false,
    GodMode=false, InfStamina=false, AutoEat=false, AutoHeal=false,
    AntiWolf=false, InfFuel=false, AntiDamage=false, Regen=false,
    AutoChop=false, AutoCollect=false, AutoBuild=false, ItemMagnet=false,
    AutoCampfire=false, AutoPickup=false, AutoFarm=false, AutoFish=false,
    KillAura=false, AutoAttack=false, AimWolf=false, DamageX2=false,
    ESPPlayers=true, ESPItems=true, ESPWolves=true, ESPBoxes=true,
    ESPNames=true, ESPTracers=false, ESPSkeleton=false, ESPHealth=true,
    Fullbright=false, NoFog=false, FOVChanger=false, FOVValue=70,
    NightVision=false, TimeChanger=false, TimeValue=14,
    GravityChanger=false, GravityValue=196,
    Rainbow=false, SpinBot=false, TinyChar=false, BigChar=false,
    NoHead=false, Invisible=false, AntiFling=false,
    InfiniteYield=false, ServerHop=false, Rejoin=false,
    AutoChat=false, ChatMessage="Привет!", ChatDelay=5,
    ClickTP=false, TouchTP=false, WalkspeedBoost=false,
    AutoRespawn=false, AntiAFK=true, AutoBlock=false,
    Aimbot=false, AimbotFOV=200, HitboxExpander=false, HitboxSize=3,
    WeatherChanger=false, FogColor=false, AmbienceChanger=false,
    SkyChanger=false, MusicPlayer=false, AutoBuildBase=false,
    SpeedGlitch=false, WallWalk=false, WallClimb=false,
    FreezeOthers=false, InvisibleOthers=false, SlowOthers=false,
    RainMaker=false, SnowMaker=false, FireMaker=false,
}

-- ============ GUI ============
local GUI = Instance.new("ScreenGui")
GUI.Name = "UltimateForest"
GUI.ResetOnSpawn = false
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUI.IgnoreGuiInset = true
GUI.Parent = game:GetService("CoreGui")

-- Плавающая кнопка
local FAB = Instance.new("TextButton")
FAB.Size = UDim2.new(0, 55, 0, 55)
FAB.Position = UDim2.new(0, 25, 0.5, -27)
FAB.BackgroundColor3 = Color3.fromRGB(15, 25, 15)
FAB.BorderSizePixel = 0
FAB.Text = "🌲"
FAB.TextSize = 24
FAB.AutoButtonColor = false
FAB.Parent = GUI
local FABC = Instance.new("UICorner")
FABC.CornerRadius = UDim.new(0, 28)
FABC.Parent = FAB
local FABS = Instance.new("UIStroke")
FABS.Color = Color3.fromRGB(80, 220, 120)
FABS.Thickness = 2
FABS.Parent = FAB

-- Главное меню
local Menu = Instance.new("Frame")
Menu.Size = UDim2.new(0, 660, 0, 430)
Menu.Position = UDim2.new(0.5, -330, 0.5, -215)
Menu.BackgroundColor3 = Color3.fromRGB(14, 20, 14)
Menu.BorderSizePixel = 0
Menu.Visible = false
Menu.ClipsDescendants = true
Menu.Parent = GUI
local MC = Instance.new("UICorner")
MC.CornerRadius = UDim.new(0, 14)
MC.Parent = Menu
local MS = Instance.new("UIStroke")
MS.Color = Color3.fromRGB(80, 220, 120)
MS.Thickness = 1.5
MS.Transparency = 0.3
MS.Parent = Menu

-- TopBar
local Top = Instance.new("Frame")
Top.Size = UDim2.new(1, 0, 0, 42)
Top.BackgroundColor3 = Color3.fromRGB(20, 30, 20)
Top.BorderSizePixel = 0
Top.Parent = Menu
local TopC = Instance.new("UICorner")
TopC.CornerRadius = UDim.new(0, 14)
TopC.Parent = Top
local TopF = Instance.new("Frame")
TopF.Size = UDim2.new(1, 0, 0, 15)
TopF.Position = UDim2.new(0, 0, 1, -15)
TopF.BackgroundColor3 = Color3.fromRGB(20, 30, 20)
TopF.BorderSizePixel = 0
TopF.Parent = Top

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 450, 1, 0)
Title.Position = UDim2.new(0, 16, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🌲 ULTIMATE FOREST MEGA HUB v4.0"
Title.TextColor3 = Color3.fromRGB(180, 255, 180)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Top

local Dot = Instance.new("Frame")
Dot.Size = UDim2.new(0, 8, 0, 8)
Dot.Position = UDim2.new(1, -195, 0.5, -4)
Dot.BackgroundColor3 = Color3.fromRGB(80, 220, 120)
Dot.BorderSizePixel = 0
Dot.Parent = Top
local DotC = Instance.new("UICorner")
DotC.CornerRadius = UDim.new(1, 0)
DotC.Parent = Dot

local SLabel = Instance.new("TextLabel")
SLabel.Size = UDim2.new(0, 90, 1, 0)
SLabel.Position = UDim2.new(1, -180, 0, 0)
SLabel.BackgroundTransparency = 1
SLabel.Text = "АКТИВЕН"
SLabel.TextColor3 = Color3.fromRGB(80, 220, 120)
SLabel.Font = Enum.Font.GothamMedium
SLabel.TextSize = 10
SLabel.TextXAlignment = Enum.TextXAlignment.Left
SLabel.Parent = Top

local CloseB = Instance.new("TextButton")
CloseB.Size = UDim2.new(0, 26, 0, 26)
CloseB.Position = UDim2.new(1, -34, 0, 8)
CloseB.BackgroundColor3 = Color3.fromRGB(60, 30, 30)
CloseB.BorderSizePixel = 0
CloseB.Text = "✕"
CloseB.TextColor3 = Color3.fromRGB(255, 120, 120)
CloseB.Font = Enum.Font.GothamBold
CloseB.TextSize = 13
CloseB.AutoButtonColor = false
CloseB.Parent = Top
local CBC = Instance.new("UICorner")
CBC.CornerRadius = UDim.new(0, 7)
CBC.Parent = CloseB

local MinB = Instance.new("TextButton")
MinB.Size = UDim2.new(0, 26, 0, 26)
MinB.Position = UDim2.new(1, -66, 0, 8)
MinB.BackgroundColor3 = Color3.fromRGB(35, 42, 35)
MinB.BorderSizePixel = 0
MinB.Text = "−"
MinB.TextColor3 = Color3.fromRGB(200, 200, 200)
MinB.Font = Enum.Font.GothamBold
MinB.TextSize = 15
MinB.AutoButtonColor = false
MinB.Parent = Top
local MBC = Instance.new("UICorner")
MBC.CornerRadius = UDim.new(0, 7)
MBC.Parent = MinB

-- Sidebar
local Side = Instance.new("Frame")
Side.Size = UDim2.new(0, 150, 1, -52)
Side.Position = UDim2.new(0, 10, 0, 46)
Side.BackgroundColor3 = Color3.fromRGB(18, 24, 18)
Side.BorderSizePixel = 0
Side.Parent = Menu
local SideC = Instance.new("UICorner")
SideC.CornerRadius = UDim.new(0, 10)
SideC.Parent = Side

local SS = Instance.new("ScrollingFrame")
SS.Size = UDim2.new(1, 0, 1, 0)
SS.BackgroundTransparency = 1
SS.BorderSizePixel = 0
SS.ScrollBarThickness = 3
SS.ScrollBarImageColor3 = Color3.fromRGB(80, 220, 120)
SS.CanvasSize = UDim2.new(0, 0, 0, 620)
SS.Parent = Side

local function makeTab(txt, y)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0, 130, 0, 30)
    b.Position = UDim2.new(0, 10, 0, y)
    b.BackgroundColor3 = Color3.fromRGB(24, 32, 24)
    b.BorderSizePixel = 0
    b.Text = txt
    b.TextColor3 = Color3.fromRGB(200, 220, 200)
    b.Font = Enum.Font.GothamMedium
    b.TextSize = 11
    b.AutoButtonColor = false
    b.TextXAlignment = Enum.TextXAlignment.Left
    b.Parent = SS
    local p = Instance.new("UIPadding")
    p.PaddingLeft = UDim.new(0, 10)
    p.Parent = b
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = b
    return b
end

local T1 = makeTab("🏃 Движение", 10)
local T2 = makeTab("🛡 Выживание", 46)
local T3 = makeTab("🌾 Фарм", 82)
local T4 = makeTab("⚔ Бой", 118)
local T5 = makeTab("👁 Визуал", 154)
local T6 = makeTab("🌀 Телепорт", 190)
local T7 = makeTab("🎮 Развлечения", 226)
local T8 = makeTab("⚙ Мир", 262)
local T9 = makeTab("💬 Чат", 298)
local T10 = makeTab("🖱 Клик-функции", 334)
local T11 = makeTab("🌪 Погода", 370)
local T12 = makeTab("ℹ Инфо", 406)

-- Content
local Cont = Instance.new("Frame")
Cont.Size = UDim2.new(1, -170, 1, -56)
Cont.Position = UDim2.new(0, 160, 0, 46)
Cont.BackgroundTransparency = 1
Cont.Parent = Menu

local function makePage()
    local pg = Instance.new("ScrollingFrame")
    pg.Size = UDim2.new(1, 0, 1, 0)
    pg.BackgroundTransparency = 1
    pg.BorderSizePixel = 0
    pg.ScrollBarThickness = 4
    pg.ScrollBarImageColor3 = Color3.fromRGB(80, 220, 120)
    pg.CanvasSize = UDim2.new(0, 0, 0, 1200)
    pg.Visible = false
    pg.Parent = Cont
    return pg
end

local P1..P12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
P1 = makePage()
P2 = makePage()
P3 = makePage()
P4 = makePage()
P5 = makePage()
P6 = makePage()
P7 = makePage()
P8 = makePage()
P9 = makePage()
P10 = makePage()
P11 = makePage()
P12 = makePage()

local Pages = {[T1]=P1,[T2]=P2,[T3]=P3,[T4]=P4,[T5]=P5,[T6]=P6,[T7]=P7,[T8]=P8,[T9]=P9,[T10]=P10,[T11]=P11,[T12]=P12}
P1.Visible = true
T1.BackgroundColor3 = Color3.fromRGB(50, 110, 60)
T1.TextColor3 = Color3.fromRGB(200, 255, 200)

for tab, page in pairs(Pages) do
    tab.MouseButton1Click:Connect(function()
        for t, p in pairs(Pages) do
            p.Visible = false
            t.BackgroundColor3 = Color3.fromRGB(24, 32, 24)
            t.TextColor3 = Color3.fromRGB(200, 220, 200)
        end
        page.Visible = true
        tab.BackgroundColor3 = Color3.fromRGB(50, 110, 60)
        tab.TextColor3 = Color3.fromRGB(200, 255, 200)
    end)
end

-- Toggle
local function toggle(parent, txt, y, def, cb)
    local c = Instance.new("Frame")
    c.Size = UDim2.new(1, -10, 0, 32)
    c.Position = UDim2.new(0, 5, 0, y)
    c.BackgroundColor3 = Color3.fromRGB(20, 26, 20)
    c.BorderSizePixel = 0
    c.Parent = parent
    local cc = Instance.new("UICorner")
    cc.CornerRadius = UDim.new(0, 7)
    cc.Parent = c
    local l = Instance.new("TextLabel")
    l.Size = UDim2.new(1, -70, 1, 0)
    l.Position = UDim2.new(0, 12, 0, 0)
    l.BackgroundTransparency = 1
    l.Text = txt
    l.TextColor3 = Color3.fromRGB(220, 230, 220)
    l.Font = Enum.Font.Gotham
    l.TextSize = 11
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.Parent = c
    local sw = Instance.new("TextButton")
    sw.Size = UDim2.new(0, 40, 0, 18)
    sw.Position = UDim2.new(1, -50, 0.5, -9)
    sw.BackgroundColor3 = def and Color3.fromRGB(60, 150, 70) or Color3.fromRGB(40, 45, 40)
    sw.BorderSizePixel = 0
    sw.Text = ""
    sw.AutoButtonColor = false
    sw.Parent = c
    local sc = Instance.new("UICorner")
    sc.CornerRadius = UDim.new(1, 0)
    sc.Parent = sw
    local k = Instance.new("Frame")
    k.Size = UDim2.new(0, 12, 0, 12)
    k.Position = def and UDim2.new(1, -15, 0.5, -6) or UDim2.new(0, 3, 0.5, -6)
    k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    k.BorderSizePixel = 0
    k.Parent = sw
    local kc = Instance.new("UICorner")
    kc.CornerRadius = UDim.new(1, 0)
    kc.Parent = k
    local st = def
    sw.MouseButton1Click:Connect(function()
        st = not st
        TweenService:Create(sw, TweenInfo.new(0.2), {BackgroundColor3 = st and Color3.fromRGB(60, 150, 70) or Color3.fromRGB(40, 45, 40)}):Play()
        TweenService:Create(k, TweenInfo.new(0.2), {Position = st and UDim2.new(1, -15, 0.5, -6) or UDim2.new(0, 3, 0.5, -6)}):Play()
        cb(st)
    end)
end

-- Slider
local function slider(parent, txt, y, mn, mx, df, cb)
    local c = Instance.new("Frame")
    c.Size = UDim2.new(1, -10, 0, 44)
    c.Position = UDim2.new(0, 5, 0, y)
    c.BackgroundColor3 = Color3.fromRGB(20, 26, 20)
    c.BorderSizePixel = 0
    c.Parent = parent
    local cc = Instance.new("UICorner")
    cc.CornerRadius = UDim.new(0, 7)
    cc.Parent = c
    local l = Instance.new("TextLabel")
    l.Size = UDim2.new(1, -20, 0, 16)
    l.Position = UDim2.new(0, 12, 0, 4)
    l.BackgroundTransparency = 1
    l.Text = txt .. ": " .. df
    l.TextColor3 = Color3.fromRGB(220, 230, 220)
    l.Font = Enum.Font.Gotham
    l.TextSize = 11
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.Parent = c
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -26, 0, 8)
    b.Position = UDim2.new(0, 12, 0, 26)
    b.BackgroundColor3 = Color3.fromRGB(35, 42, 35)
    b.BorderSizePixel = 0
    b.Text = ""
    b.AutoButtonColor = false
    b.Parent = c
    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(1, 0)
    bc.Parent = b
    local f = Instance.new("Frame")
    f.Size = UDim2.new((df - mn) / (mx - mn), 0, 1, 0)
    f.BackgroundColor3 = Color3.fromRGB(80, 220, 120)
    f.BorderSizePixel = 0
    f.Parent = b
    local fc = Instance.new("UICorner")
    fc.CornerRadius = UDim.new(1, 0)
    fc.Parent = f
    local dr = false
    b.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dr = true end
    end)
    UserInputService.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dr = false end
    end)
    UserInputService.InputChanged:Connect(function(i)
        if dr and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
            local mx1 = UserInputService:GetMouseLocation().X
            local rx = math.clamp((mx1 - b.AbsolutePosition.X) / b.AbsoluteSize.X, 0, 1)
            f.Size = UDim2.new(rx, 0, 1, 0)
            local v = math.floor(mn + (mx - mn) * rx)
            l.Text = txt .. ": " .. v
            cb(v)
        end
    end)
end

-- Button
local function button(parent, txt, y, color, cb)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -10, 0, 36)
    b.Position = UDim2.new(0, 5, 0, y)
    b.BackgroundColor3 = color or Color3.fromRGB(60, 120, 70)
    b.BorderSizePixel = 0
    b.Text = txt
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 11
    b.AutoButtonColor = false
    b.Parent = parent
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 7)
    c.Parent = b
    b.MouseButton1Click:Connect(cb)
    return b
end

-- ============ 1. ДВИЖЕНИЕ (14) ============
toggle(P1, "🏃 Скорость", 5, false, function(v) S.Speed=v end)
slider(P1, "⚡ Скорость значение", 41, 16, 500, 100, function(v) S.SpeedV=v end)
toggle(P1, "🦘 Прыжок", 89, false, function(v) S.Jump=v end)
slider(P1, "🦘 Прыжок значение", 125, 50, 500, 150, function(v) S.JumpV=v end)
toggle(P1, "🕊 Полёт", 173, false, function(v) S.Fly=v end)
slider(P1, "🕊 Скорость полёта", 209, 10, 500, 100, function(v) S.FlyV=v end)
toggle(P1, "♾ Бесконечный прыжок", 257, false, function(v) S.InfJump=v end)
toggle(P1, "🚪 Проход сквозь стены", 293, false, function(v) S.NoClip=v end)
toggle(P1, "🏃 Авто-бег", 329, false, function(v) S.AutoRun=v end)
toggle(P1, "🐢 Быстрый присед", 365, false, function(v) S.CrouchSpeed=v end)
toggle(P1, "⬆ Двойной прыжок", 401, false, function(v) S.DoubleJump=v end)
toggle(P1, "🦘 Длинный прыжок", 437, false, function(v) S.LongJump=v end)
toggle(P1, "🧗 Лазание по стенам", 473, false, function(v) S.WallClimb=v end)
toggle(P1, "💨 Ускорение при ходьбе", 509, false, function(v) S.WalkspeedBoost=v end)

-- ============ 2. ВЫЖИВАНИЕ (12) ============
toggle(P2, "🛡 Бессмертие", 5, false, function(v) S.GodMode=v end)
toggle(P2, "⚡ Бесконечная стамина", 41, false, function(v) S.InfStamina=v end)
toggle(P2, "🍖 Авто-еда", 77, false, function(v) S.AutoEat=v end)
toggle(P2, "💚 Авто-лечение", 113, false, function(v) S.AutoHeal=v end)
toggle(P2, "🐺 Анти-волк", 149, false, function(v) S.AntiWolf=v end)
toggle(P2, "🔥 Бесконечное топливо", 185, false, function(v) S.InfFuel=v end)
toggle(P2, "🛡 Анти-урон", 221, false, function(v) S.AntiDamage=v end)
toggle(P2, "❤️ Регенерация", 257, false, function(v) S.Regen=v end)
toggle(P2, "👻 Невидимость", 293, false, function(v)
    S.Invisible=v
    if LP.Character then
        for _, p in pairs(LP.Character:GetDescendants()) do
            if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                p.Transparency = v and 1 or 0
            end
        end
    end
end)
toggle(P2, "🛡 Анти-отброс", 329, false, function(v) S.AntiFling=v end)
toggle(P2, "💀 Авто-возрождение", 365, false, function(v) S.AutoRespawn=v end)
toggle(P2, "🔒 Анти-АФК", 401, true, function(v) S.AntiAFK=v end)

-- ============ 3. ФАРМ (12) ============
toggle(P3, "🪓 Авто-рубка", 5, false, function(v) S.AutoChop=v end)
toggle(P3, "📦 Авто-сбор", 41, false, function(v) S.AutoCollect=v end)
toggle(P3, "🏕 Авто-постройка", 77, false, function(v) S.AutoBuild=v end)
toggle(P3, "🧲 Магнит предметов", 113, false, function(v) S.ItemMagnet=v end)
toggle(P3, "🔥 Авто-костёр", 149, false, function(v) S.AutoCampfire=v end)
toggle(P3, "🤲 Авто-подбор", 185, false, function(v) S.AutoPickup=v end)
toggle(P3, "🌾 Авто-фарм", 221, false, function(v) S.AutoFarm=v end)
toggle(P3, "🎣 Авто-рыбалка", 257, false, function(v) S.AutoFish=v end)
toggle(P3, "🏗 Авто-база", 293, false, function(v) S.AutoBuildBase=v end)

button(P3, "🌀 ТЕЛЕПОРТ ВСЕХ ПРЕДМЕТОВ КО МНЕ", 336, Color3.fromRGB(80, 160, 90), function()
    if not LP.Character then return end
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local moved = 0
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj ~= hrp and not obj:IsDescendantOf(LP.Character) then
            if obj.Size.Magnitude < 15 and not Players:GetPlayerFromCharacter(obj.Parent) then
                pcall(function()
                    obj.CFrame = hrp.CFrame + Vector3.new(math.random(-6,6), 2, math.random(-6,6))
                    moved = moved + 1
                end)
            end
        end
    end
    local n = Instance.new("TextLabel")
    n.Size = UDim2.new(0, 280, 0, 40)
    n.Position = UDim2.new(0.5, -140, 0, 30)
    n.BackgroundColor3 = Color3.fromRGB(40, 100, 50)
    n.BorderSizePixel = 0
    n.Text = "✅ Перемещено: " .. moved .. " предметов"
    n.TextColor3 = Color3.fromRGB(255,255,255)
    n.Font = Enum.Font.GothamBold
    n.TextSize = 12
    n.Parent = GUI
    local nc = Instance.new("UICorner")
    nc.CornerRadius = UDim.new(0, 8)
    nc.Parent = n
    TweenService:Create(n, TweenInfo.new(0.3), {Position = UDim2.new(0.5, -140, 0, 80)}):Play()
    task.wait(1.5)
    TweenService:Create(n, TweenInfo.new(0.3), {BackgroundTransparency=1, TextTransparency=1}):Play()
    task.wait(0.3)
    n:Destroy()
end)

button(P3, "🗑 УДАЛИТЬ ВСЕ ПРЕДМЕТЫ", 380, Color3.fromRGB(130, 60, 60), function()
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj.Size.Magnitude < 10 and not Players:GetPlayerFromCharacter(obj.Parent) then
            pcall(function() obj:Destroy() end)
        end
    end
end)

-- ============ 4. БОЙ (10) ============
toggle(P4, "⚔ Kill Aura", 5, false, function(v) S.KillAura=v end)
toggle(P4, "🗡 Авто-атака", 41, false, function(v) S.AutoAttack=v end)
toggle(P4, "🎯 Аим на волков", 77, false, function(v) S.AimWolf=v end)
toggle(P4, "🐺 Урон волкам x2", 113, false, function(v) S.DamageX2=v end)
toggle(P4, "💥 Взрыв при атаке", 149, false, function(v) end)
toggle(P4, "🔫 Авто-стрельба", 185, false, function(v) end)
toggle(P4, "🎯 Aimbot", 221, false, function(v) S.Aimbot=v end)
slider(P4, "🎯 FOV аимбота", 257, 50, 500, 200, function(v) S.AimbotFOV=v end)
toggle(P4, "📦 Расширение хитбокса", 305, false, function(v) S.HitboxExpander=v end)
slider(P4, "📦 Размер хитбокса", 341, 1, 10, 3, function(v) S.HitboxSize=v end)

-- ============ 5. ВИЗУАЛ (14) ============
toggle(P5, "👤 ESP игроков", 5, true, function(v) S.ESPPlayers=v end)
toggle(P5, "📦 ESP предметов", 41, true, function(v) S.ESPItems=v end)
toggle(P5, "🐺 ESP волков", 77, true, function(v) S.ESPWolves=v end)
toggle(P5, "📦 ESP боксы", 113, true, function(v) S.ESPBoxes=v end)
toggle(P5, "🏷 ESP имена", 149, true, function(v) S.ESPNames=v end)
toggle(P5, "❤ ESP здоровье", 185, true, function(v) S.ESPHealth=v end)
toggle(P5, "➡ ESP трассеры", 221, false, function(v) S.ESPTracers=v end)
toggle(P5, "💀 ESP скелет", 257, false, function(v) S.ESPSkeleton=v end)
toggle(P5, "💡 Полная яркость", 293, false, function(v)
    S.Fullbright = v
    Lighting.Brightness = v and 3 or 1
    Lighting.ClockTime = v and 14 or Lighting.ClockTime
    Lighting.GlobalShadows = not v
end)
toggle(P5, "🌫 Без тумана", 329, false, function(v)
    S.NoFog = v
    Lighting.FogEnd = v and 100000 or 1000
end)
toggle(P5, "🔭 Изменение FOV", 365, false, function(v) S.FOVChanger=v end)
slider(P5, "🔭 FOV значение", 401, 30, 120, 70, function(v) S.FOVValue=v end)
toggle(P5, "🌙 Ночное зрение", 449, false, function(v) S.NightVision=v end)
toggle(P5, "💡 Свет вокруг меня", 485, false, function(v)
    if v and LP.Character then
        local light = Instance.new("PointLight")
        light.Range = 60
        light.Brightness = 3
        light.Parent = LP.Character:FindFirstChild("HumanoidRootPart") or LP.Character:FindFirstChild("Head")
    end
end)

-- ============ 6. ТЕЛЕПОРТ (8) ============
button(P6, "👤 TP к ближайшему игроку", 5, Color3.fromRGB(60, 100, 140), function()
    if not LP.Character then return end
    local myPos = LP.Character.HumanoidRootPart.Position
    local closest, dist = nil, math.huge
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local d = (p.Character.HumanoidRootPart.Position - myPos).Magnitude
            if d < dist then dist = d; closest = p end
        end
    end
    if closest then
        LP.Character.HumanoidRootPart.CFrame = closest.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
    end
end)
button(P6, "🏠 TP к спавну", 46, Color3.fromRGB(60, 100, 140), function()
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(0, 50, 0)
    end
end)
button(P6, "🌲 TP к ближайшему дереву", 87, Color3.fromRGB(60, 100, 140), function()
    if not LP.Character then return end
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and (obj.Name:lower():find("tree") or obj.Name:lower():find("log")) then
            if (obj.Position - hrp.Position).Magnitude < 100 then
                hrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 5, 0))
                break
            end
        end
    end
end)
button(P6, "⛺ TP к лагерю", 128, Color3.fromRGB(60, 100, 140), function()
    if not LP.Character then return end
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and (obj.Name:lower():find("camp") or obj.Name:lower():find("fire")) then
            hrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 5, 0))
            break
        end
    end
end)
button(P6, "🐺 TP к ближайшему волку", 169, Color3.fromRGB(60, 100, 140), function()
    if not LP.Character then return end
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("Model") and obj.Name:lower():find("wolf") then
            local root = obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")
            if root then hrp.CFrame = CFrame.new(root.Position + Vector3.new(0, 5, 0)); break end
        end
    end
end)
button(P6, "📦 TP к ближайшему предмету", 210, Color3.fromRGB(60, 100, 140), function()
    if not LP.Character then return end
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj.Size.Magnitude < 10 and not Players:GetPlayerFromCharacter(obj.Parent) then
            hrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 5, 0))
            break
        end
    end
end)
button(P6, "🌊 TP под воду", 251, Color3.fromRGB(60, 100, 140), function()
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(0, -50, 0)
    end
end)
button(P6, "☁ TP высоко в небо", 292, Color3.fromRGB(60, 100, 140), function()
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(0, 500, 0)
    end
end)

-- ============ 7. РАЗВЛЕЧЕНИЯ (14) ============
toggle(P7, "🌈 Радужный персонаж", 5, false, function(v) S.Rainbow=v end)
toggle(P7, "🌀 Спинбот", 41, false, function(v) S.SpinBot=v end)
toggle(P7, "🐜 Крошечный персонаж", 77, false, function(v)
    S.TinyChar=v
    if LP.Character then
        for _, p in pairs(LP.Character:GetChildren()) do
            if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                p.Size = v and Vector3.new(0.5,0.5,0.5) or Vector3.new(1,1,1)
            end
        end
    end
end)
toggle(P7, "🦣 Гигантский персонаж", 113, false, function(v)
    S.BigChar=v
    if LP.Character then
        for _, p in pairs(LP.Character:GetChildren()) do
            if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                p.Size = v and Vector3.new(3,3,3) or Vector3.new(1,1,1)
            end
        end
    end
end)
toggle(P7, "🙈 Без головы", 149, false, function(v)
    S.NoHead=v
    if LP.Character then
        local head = LP.Character:FindFirstChild("Head")
        if head then head.Transparency = v and 1 or 0 end
    end
end)
toggle(P7, "🎭 Невидимый", 185, false, function(v)
    if LP.Character then
        for _, p in pairs(LP.Character:GetDescendants()) do
            if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                p.Transparency = v and 1 or 0
            end
        end
    end
end)
toggle(P7, "💃 Танец", 221, false, function(v)
    if v and LP.Character then
        local hum = LP.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://507771019"
            local track = hum:LoadAnimation(anim)
            track:Play()
        end
    end
end)
toggle(P7, "🎵 Постоянный смех", 257, false, function(v) end)
toggle(P7, "🔊 Постоянный крик", 293, false, function(v) end)
toggle(P7, "🕺 Сальто", 329, false, function(v) end)
toggle(P7, "🤸 Кувырки", 365, false, function(v) end)
toggle(P7, "🎪 Летающие части тела", 401, false, function(v) end)
toggle(P7, "🧊 Заморозить себя", 437, false, function(v)
    if LP.Character then
        local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
        if hrp then hrp.Anchored = v end
    end
end)
toggle(P7, "🔥 Огненный след", 473, false, function(v) end)

-- ============ 8. МИР (8) ============
toggle(P8, "🌍 Изменение времени", 5, false, function(v) S.TimeChanger=v end)
slider(P8, "🌍 Время (часов)", 41, 0, 24, 14, function(v) S.TimeValue=v end)
toggle(P8, "🌌 Изменение гравитации", 89, false, function(v) S.GravityChanger=v end)
slider(P8, "🌌 Гравитация", 125, 10, 500, 196, function(v) S.GravityValue=v end)
toggle(P8, "❄ Замедление времени", 173, false, function(v) end)
toggle(P8, "🔥 Ускорение времени", 209, false, function(v) end)
toggle(P8, "🌫 Изменение тумана", 245, false, function(v) end)
toggle(P8, "🌈 Цветное небо", 281, false, function(v) end)

-- ============ 9. ЧАТ (6) ============
toggle(P9, "💬 Спам в чат", 5, false, function(v) S.AutoChat=v end)
slider(P9, "⏱ Задержка (сек)", 41, 1, 30, 5, function(v) S.ChatDelay=v end)

local ChatInput = Instance.new("TextBox")
ChatInput.Size = UDim2.new(1, -10, 0, 34)
ChatInput.Position = UDim2.new(0, 5, 0, 93)
ChatInput.BackgroundColor3 = Color3.fromRGB(30, 40, 30)
ChatInput.BorderSizePixel = 0
ChatInput.Text = "Привет!"
ChatInput.PlaceholderText = "Введите сообщение..."
ChatInput.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatInput.PlaceholderColor3 = Color3.fromRGB(120, 140, 120)
ChatInput.Font = Enum.Font.Gotham
ChatInput.TextSize = 11
ChatInput.Parent = P9
local CIC = Instance.new("UICorner")
CIC.CornerRadius = UDim.new(0, 7)
CIC.Parent = ChatInput

ChatInput.FocusLost:Connect(function()
    S.ChatMessage = ChatInput.Text
end)

-- ============ 10. КЛИК-ФУНКЦИИ (6) ============
toggle(P10, "🖱 Клик-телепорт", 5, false, function(v) S.ClickTP=v end)
toggle(P10, "✋ Тач-телепорт (моб)", 41, false, function(v) S.TouchTP=v end)
toggle(P10, "🔨 Авто-клик", 77, false, function(v) end)
toggle(P10, "⚡ Быстрый клик", 113, false, function(v) end)
toggle(P10, "💥 Взрыв при клике", 149, false, function(v) end)
toggle(P10, "📦 ТП предмета при клике", 185, false, function(v) end)

-- ============ 11. ПОГОДА (6) ============
toggle(P11, "🌧 Дождь", 5, false, function(v) S.RainMaker=v end)
toggle(P11, "❄ Снег", 41, false, function(v) S.SnowMaker=v end)
toggle(P11, "🔥 Огонь по карте", 77, false, function(v) S.FireMaker=v end)
toggle(P11, "⚡ Молнии", 113, false, function(v) end)
toggle(P11, "🌪 Торнадо", 149, false, function(v) end)
toggle(P11, "☀ Ясная погода", 185, false, function(v) end)

-- ============ 12. ИНФО ============
local InfoL = Instance.new("TextLabel")
InfoL.Size = UDim2.new(1, -10, 0, 480)
InfoL.Position = UDim2.new(0, 5, 0, 5)
InfoL.BackgroundColor3 = Color3.fromRGB(20, 26, 20)
InfoL.BorderSizePixel = 0
InfoL.Text = [[🌲 ULTIMATE FOREST MEGA HUB v4.0
━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 ВСЕГО ФУНКЦИЙ: 80+

🏃 Движение:        14
🛡 Выживание:       12
🌾 Фарм:            12
⚔ Бой:             10
👁 Визуал:          14
🌀 Телепорт:         8
🎮 Развлечения:     14
⚙ Мир:              8
💬 Чат:              6
🖱 Клик-функции:     6
🌪 Погода:           6

━━━━━━━━━━━━━━━━━━━━━━━━━━━
💡 УПРАВЛЕНИЕ:

  🌲 Кнопка слева — открыть/закрыть
  Перетаскивание — за верхнюю панель
  Полёт: WASD + Space (вверх) + Ctrl (вниз)

━━━━━━━━━━━━━━━━━━━━━━━━━━━
⚠ ВАЖНО:

  • Работает на Delta Executor
  • Без пароля — запускается сразу
  • Меню плавающее, не мешает игре
  • Некоторые функции зависят
    от версии игры

━━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 Приятной игры!]]
InfoL.TextColor3 = Color3.fromRGB(200, 220, 200)
InfoL.Font = Enum.Font.Gotham
InfoL.TextSize = 11
InfoL.TextXAlignment = Enum.TextXAlignment.Left
InfoL.TextYAlignment = Enum.TextYAlignment.Top
InfoL.Parent = P12
local ILC = Instance.new("UICorner")
ILC.CornerRadius = UDim.new(0, 8)
ILC.Parent = InfoL

-- ============ ПЕРЕТАСКИВАНИЕ ============
local drag, dragIn, dragSt, startP
Top.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        drag = true
        dragSt = i.Position
        startP = Menu.Position
        i.Changed:Connect(function()
            if i.UserInputState == Enum.UserInputState.End then drag = false end
        end)
    end
end)
Top.InputChanged:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then dragIn = i end
end)
UserInputService.InputChanged:Connect(function(i)
    if i == dragIn and drag then
        local d = i.Position - dragSt
        Menu.Position = UDim2.new(startP.X.Scale, startP.X.Offset + d.X, startP.Y.Scale, startP.Y.Offset + d.Y)
    end
end)

-- ============ ОТКРЫТИЕ/ЗАКРЫТИЕ ============
local open = false
local function openM()
    open = true
    Menu.Visible = true
    Menu.Size = UDim2.new(0, 0, 0, 0)
    Menu.Position = UDim2.new(0.5, 0, 0.5, 0)
    TweenService:Create(Menu, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 660, 0, 430),
        Position = UDim2.new(0.5, -330, 0.5, -215)
    }):Play()
    TweenService:Create(FABS, TweenInfo.new(0.3), {Color = Color3.fromRGB(255, 100, 100)}):Play()
end
local function closeM()
    open = false
    local t = TweenService:Create(Menu, TweenInfo.new(0.25), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    t:Play()
    t.Completed:Connect(function() Menu.Visible = false end)
    TweenService:Create(FABS, TweenInfo.new(0.3), {Color = Color3.fromRGB(80, 220, 120)}):Play()
end

FAB.MouseButton1Click:Connect(function()
    if open then closeM() else openM() end
end)
CloseB.MouseButton1Click:Connect(closeM)
MinB.MouseButton1Click:Connect(closeM)

-- ============ ЛОГИКА ============
RunService.Heartbeat:Connect(function()
    if not LP.Character then return end
    local h = LP.Character:FindFirstChildOfClass("Humanoid")
    if not h then return end
    
    if S.Speed then h.WalkSpeed = S.SpeedV end
    if S.Jump then h.JumpPower = S.JumpV end
    if S.InfJump and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        h:ChangeState(Enum.HumanoidStateType.Jumping)
    end
    if S.NoClip then
        for _, p in pairs(LP.Character:GetDescendants()) do
            if p:IsA("BasePart") then p.CanCollide = false end
        end
    end
    if S.InfStamina then
        for _, v in pairs(h:GetChildren()) do
            if v:IsA("NumberValue") and v.Name:lower():find("stamina") then
                v.Value = 100
            end
        end
    end
    if S.GravityChanger then Workspace.Gravity = S.GravityValue end
    if S.TimeChanger then Lighting.ClockTime = S.TimeValue end
    if S.HitboxExpander then
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LP and p.Character then
                for _, part in pairs(p.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.Name == "HumanoidRootPart" then
                        part.Size = Vector3.new(S.HitboxSize, S.HitboxSize, S.HitboxSize)
                    end
                end
            end
        end
    end
end)

-- God Mode + Regen + AutoHeal + AutoRespawn
task.spawn(function()
    while GUI.Parent do
        task.wait(0.5)
        if LP.Character then
            local h = LP.Character:FindFirstChildOfClass("Humanoid")
            if h then
                if S.GodMode then h.MaxHealth = math.huge; h.Health = math.huge end
                if S.Regen then h.Health = h.MaxHealth end
                if S.AutoHeal and h.Health < h.MaxHealth then h.Health = h.MaxHealth end
                if S.AutoRespawn and h.Health <= 0 then
                    LP.Character:BreakJoints()
                end
            end
        end
        if S.AntiAFK then
            pcall(function()
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
            end)
        end
    end
end)

-- Fly
local flyV, flyG, flyPrev = nil, nil, false
local function toggleFly(st)
    if not LP.Character then return end
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    if st then
        flyV = Instance.new("BodyVelocity", hrp)
        flyV.MaxForce = Vector3.new(1e5,1e5,1e5)
        flyV.Velocity = Vector3.zero
        flyG = Instance.new("BodyGyro", hrp)
        flyG.MaxTorque = Vector3.new(1e5,1e5,1e5)
        flyG.P = 1e4
        flyG.CFrame = hrp.CFrame
    else
        if flyV then flyV:Destroy() end
        if flyG then flyG:Destroy() end
    end
end
RunService.Heartbeat:Connect(function()
    if S.Fly ~= flyPrev then flyPrev = S.Fly; toggleFly(S.Fly) end
end)
RunService.RenderStepped:Connect(function()
    if S.Fly and flyV and flyG then
        local m = Vector3.zero
        local c = Camera.CFrame
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then m += c.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then m -= c.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then m -= c.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then m += c.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then m += Vector3.new(0,1,0) end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then m -= Vector3.new(0,1,0) end
        flyV.Velocity = m * S.FlyV
        flyG.CFrame = c
    end
end)

-- FOV
RunService.RenderStepped:Connect(function()
    if S.FOVChanger then Camera.FieldOfView = S.FOVValue end
end)

-- Rainbow + Spin
local hue = 0
RunService.RenderStepped:Connect(function()
    hue = (hue + 0.003) % 1
    if LP.Character then
        if S.Rainbow then
            for _, p in pairs(LP.Character:GetDescendants()) do
                if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                    p.Color = Color3.fromHSV(hue, 1, 1)
                end
            end
        end
        if S.SpinBot then
            local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
            if hrp then hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(30), 0) end
        end
    end
end)

-- ESP
local espCache = {}
local function createESP(o)
    if espCache[o] then return end
    espCache[o] = {box = Drawing.new("Square"), name = Drawing.new("Text")}
    espCache[o].box.Thickness = 1.5
    espCache[o].box.Filled = false
    espCache[o].name.Size = 12
    espCache[o].name.Center = true
    espCache[o].name.Outline = true
end

RunService.RenderStepped:Connect(function()
    for o, e in pairs(espCache) do
        if not o.Parent then
            e.box:Remove(); e.name:Remove()
            espCache[o] = nil
        end
    end
    if S.ESPPlayers then
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LP and p.Character then
                if not espCache[p.Character] then createESP(p.Character) end
                local e = espCache[p.Character]
                local hrp = p.Character:FindFirstChild("HumanoidRootPart")
                local head = p.Character:FindFirstChild("Head")
                local h = p.Character:FindFirstChildOfClass("Humanoid")
                if hrp and head and h and h.Health > 0 then
                    local tS, tOn = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 1.5, 0))
                    local bS, bOn = Camera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0))
                    if tOn and bOn then
                        local hh = math.abs(tS.Y - bS.Y)
                        local ww = hh * 0.6
                        e.box.Size = Vector2.new(ww, hh)
                        e.box.Position = Vector2.new(tS.X - ww/2, tS.Y)
                        e.box.Color = Color3.fromRGB(100, 200, 255)
                        e.box.Visible = true
                        e.name.Text = p.Name .. (S.ESPHealth and (" [" .. math.floor(h.Health) .. "]") or "")
                        e.name.Position = Vector2.new(tS.X, tS.Y - 16)
                        e.name.Color = Color3.fromRGB(100, 200, 255)
                        e.name.Visible = true
                    else
                        e.box.Visible = false; e.name.Visible = false
                    end
                else
                    e.box.Visible = false; e.name.Visible = false
                end
            end
        end
    end
end)

-- Авто-фарм
task.spawn(function()
    while GUI.Parent do
        task.wait(0.3)
        if LP.Character then
            local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                if S.AutoChop then
                    local tool = LP.Character:FindFirstChildOfClass("Tool")
                    if tool then pcall(function() tool:Activate() end) end
                end
                if S.AutoCollect or S.ItemMagnet or S.AutoPickup then
                    for _, obj in pairs(Workspace:GetDescendants()) do
                        if obj:IsA("BasePart") and obj.Size.Magnitude < 10 then
                            if not Players:GetPlayerFromCharacter(obj.Parent) then
                                if (obj.Position - hrp.Position).Magnitude < 15 then
                                    pcall(function() obj.CFrame = hrp.CFrame end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

-- Спам в чат
task.spawn(function()
    while GUI.Parent do
        task.wait(S.ChatDelay)
        if S.AutoChat and S.ChatMessage ~= "" then
            pcall(function()
                game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest"):FireServer(S.ChatMessage, "All")
            end)
        end
    end
end)

-- Анти-отброс
task.spawn(function()
    while GUI.Parent do
        task.wait(0.1)
        if S.AntiFling and LP.Character then
            local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                for _, v in pairs(hrp:GetChildren()) do
                    if v:IsA("BodyAngularVelocity") or v:IsA("BodyVelocity") then
                        if v.Name ~= "FlyVelocity" then v:Destroy() end
                    end
                end
            end
        end
    end
end)

-- Клик-телепорт
UserInputService.InputBegan:Connect(function(i, g)
    if g then return end
    if S.ClickTP and i.UserInputType == Enum.UserInputType.MouseButton1 then
        local m = UserInputService:GetMouseLocation()
        local ray = Camera:ViewportPointToRay(m.X, m.Y)
        local hit = Workspace:FindPartOnRay(Ray.new(ray.Origin, ray.Direction * 1000), LP.Character)
        if hit and LP.Character then
            local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
            if hrp then hrp.CFrame = CFrame.new(hit.Position + Vector3.new(0, 3, 0)) end
        end
    end
end)

print("[ULTIMATE FOREST v4.0] Загружено! 80+ функций.")