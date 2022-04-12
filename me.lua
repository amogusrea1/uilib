local library = {}

function library:CreateWindow(name)
    local MainGui = Instance.new("ScreenGui")
    local TopMain = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local TextLabel = Instance.new("TextLabel")
    local CloseBTN = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")

    MainGui.Name = "MainGui"
    MainGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    TopMain.Name = "TopMain"
    TopMain.Parent = MainGui
    TopMain.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
    TopMain.BorderSizePixel = 0
    TopMain.Position = UDim2.new(0.305429876, 0, 0.231901839, 0)
    TopMain.Size = UDim2.new(0, 515, 0, 26)

    Container.Name = "Container"
    Container.Parent = TopMain
    Container.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 0.993441045, 0)
    Container.Size = UDim2.new(0, 515, 0, 331)

    UIGridLayout.Parent = Container
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 150, 0, 40)

    TextLabel.Parent = TopMain
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 2.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Size = UDim2.new(0, 480, 0, 26)
    TextLabel.Font = Enum.Font.Code
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.Text = name
    
    CloseBTN.Name = "CloseBTN"
    CloseBTN.Parent = TopMain
    CloseBTN.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    CloseBTN.BorderSizePixel = 0
    CloseBTN.Position = UDim2.new(0.945631087, 0, 0, 0)
    CloseBTN.Size = UDim2.new(0, 28, 0, 25)
    CloseBTN.Font = Enum.Font.SourceSans
    CloseBTN.Text = ""
    CloseBTN.TextColor3 = Color3.fromRGB(255, 0, 0)
    CloseBTN.TextSize = 14.000

    UICorner.CornerRadius = UDim.new(0, 999999999)
    UICorner.Parent = CloseBTN
        -- Scripts:

    local function DCHCZW_fake_script() -- CloseBTN.LocalScript 
        local script = Instance.new('LocalScript', CloseBTN)

        script.Parent.MouseButton1Down:Connect(function()
            script.Parent.Parent.Parent:Destroy()
            end)
    end
    coroutine.wrap(DCHCZW_fake_script)()
    local function VWZCXM_fake_script() -- MainGui.DraggableGUI 
        local script = Instance.new('LocalScript', MainGui)

        local UserInputService = game:GetService("UserInputService")
        
        local gui = script.Parent.TopMain
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        local function update(input)
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        
        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
                
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                if gui.Visible then
                    update(input)
                end
            end
        end)
    end
    coroutine.wrap(VWZCXM_fake_script)()



    local thelib = {}

function thelib:CreateButton(theguh, callback)
    local TextButton = Instance.new("TextButton")

    TextButton.Parent = Container
    TextButton.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.384466022, 0, 0.573060393, 0)
    TextButton.Size = UDim2.new(0, 141, 0, 25)
    TextButton.Font = Enum.Font.SourceSansBold
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextScaled = true
    TextButton.TextSize = 14.000
    TextButton.TextWrapped = true
    TextButton.Text = theguh

    TextButton.MouseButton1Down:Connect(function()
        pcall(callback)
    end)

end
return thelib  
-- end VVVV
end

return library

