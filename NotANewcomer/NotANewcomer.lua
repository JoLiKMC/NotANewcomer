local frame=CreateFrame("Frame")

frame:RegisterEvent("UI_INFO_MESSAGE")
frame:SetScript("OnEvent",function(self,event,...)
	DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffI'm checking your guild status…")
	if (IsInGuild()) then
		local guildName=GetGuildInfo("player")
		GetGuildInfo("player")
		if (guildName == "Newcomers") then
			DEFAULT_CHAT_FRAME.editBox:SetText("/gquit") ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
			DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffLooks like you're part of the |cff00FF00Newcomers |cffffffffguild.  Let's take care of that!")
		else
			DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffYou are currently a member of the |cff00FF00" ..guildName.. " |cffffffffguild.  You're good to go!")
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffHey!  You aren't in any guild at all!")
	end
frame:UnregisterEvent("UI_INFO_MESSAGE");
end);
