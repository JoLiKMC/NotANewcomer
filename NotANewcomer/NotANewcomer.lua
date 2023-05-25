local frame=CreateFrame("Frame");
local guildName = GetGuildInfo("player")

frame:RegisterEvent("VARIABLES_LOADED");
frame:SetScript("OnEvent",function(self,event,...)
	DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffChecking guild status…")
	if (IsInGuild()) then
		GetGuildInfo("player")
		if (guildName == "Newcomers") then
			DEFAULT_CHAT_FRAME.editBox:SetText("/gquit") ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
			DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffYou have been removed from the |cff00FF00Newcomers |cffffffffguild.  You're welcome!")
		else
			DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffYou are a member of the |cff00FF00" ..guildName.. " |cffffffffguild.  You're good to go!")
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cffffcc00Not a Newcomer!: |cffffffffYou aren't in any guild at all!")
	end
end);
