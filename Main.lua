local host = 98537731 -- Replace with the player ID you want to listen for

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
local codes = {"@DAHOOD", "secretcodeinmain", "4LEAFCLOVER", "2BVISITS"}

game:GetService("Players").PlayerAdded:Connect(function(player)
    if player.UserId == host then
        player.Chatted:Connect(function(message)
            if message:sub(1, 4) == "!rd " then
                local code = message:sub(5)
                local isValidCode = false
                for _, c in ipairs(codes) do
                    if c == code then
                        isValidCode = true
                        break
                    end
                end
                if not isValidCode then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.ChatRemote:FireServer("The code " .. code .. " is invalid.")
                else
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("EnterPromoCode", code)
                end
            end
        end)
    end
end)
