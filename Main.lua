

-- made by lootsu idc about skidding but this is the original
-- dont edit anything wit this script other than the codes unless u know what u doin
task.spawn(function()
   repeat task.wait(0.1) until game:IsLoaded()
   task.wait(1)
   game.StarterGui:SetCore("SendNotification", {
       Title = "message for host",
       Text = "even tho you executed this on an alt please make sure you replaced host ID in the script with the account that you want to tell your alts to redeem with",
       Duration = 20,
   })
end)

if not game:IsLoaded() then
    game.Loaded:Wait()
    task.wait(2)
end

-- // this just brings u to admin bud
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-876.646729, -36.9983788, -595.755371, 0.9344877, -0.0139206452, -0.355723262, 3.70585476e-05, 0.999238968, -0.0390061885, 0.355995566, 0.0364376158, 0.933777034)

repeat
    task.wait(0.25)
until game:GetService("Players") and game:GetService("Players").LocalPlayer

task.wait(1)
local player = game:GetService("Players").LocalPlayer

repeat
    task.wait(0.25)
until player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("FULLY_LOADED_CHAR")
task.wait(2)

local codes = {
    "2BLIKES",
    "@DAHOOD",
    "secretcodemain"
}

local function redeemCode(code)
    for _, c in pairs(codes) do
        if c == code then
            player.Character.HumanoidRootPart.ChatRemote:FireServer("redeemed code " .. code .. " from the host")
            game:GetService("ReplicatedStorage").MainEvent:FireServer("EnterPromoCode", code)
            task.wait(0.2)
            return true
        end
    end
    return false
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        if player.UserId == 98537731 and string.sub(message, 1, 8) == "!rdm " then
            local code = string.sub(message, 9)
            if redeemCode(code) then
                player.Character.HumanoidRootPart.ChatRemote:FireServer("redeemed code " .. code .. " from  the host")
            end
        end
    end)
end)
