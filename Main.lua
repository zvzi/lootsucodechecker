local host = 98537731 -- Replace with the player ID you want to listen for



game:GetService("Players").PlayerAdded:Connect(function(player)
    if player.UserId == host then
        player.Chatted:Connect(function(message)
            if message:sub(1, 4) == "!rd " then
                local code = message:sub(5)
                game:GetService("ReplicatedStorage").MainEvent:FireServer("EnterPromoCode", code)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.ChatRemote:FireServer("The code " .. code .. " is invalid.")
            end
        end)
    end
end)
