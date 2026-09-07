-- Sends Discord webhook notifications.
-- The URL layout is https://discord.com/api/webhooks/:id/:token
-- Leave empty if you wish to disable.

if not announcementChannels then
	announcementChannels = {
		["serverAnnouncements"] = "https://discord.com/api/webhooks/1235787991423909958/gdellKmi8AtGiPfugm-vQS4cL8Ye5YVZDO7vnPXFwyVrqAA3Fyw396JY4npaN9vURxCL", -- Used for an announcement channel on your discord
		["raids"] = "https://discord.com/api/webhooks/1235787991423909958/gdellKmi8AtGiPfugm-vQS4cL8Ye5YVZDO7vnPXFwyVrqAA3Fyw396JY4npaN9vURxCL", -- Used to isolate raids on your discord
		["player-kills"] = "https://discord.com/api/webhooks/1235787991423909958/gdellKmi8AtGiPfugm-vQS4cL8Ye5YVZDO7vnPXFwyVrqAA3Fyw396JY4npaN9vURxCL", -- Self-explaining
		["player-levels"] = "https://discord.com/api/webhooks/1235787991423909958/gdellKmi8AtGiPfugm-vQS4cL8Ye5YVZDO7vnPXFwyVrqAA3Fyw396JY4npaN9vURxCL", -- Self-explaining
		["reports"] = "",
	}
end

--[[
	Example of notification (After you do the config):
	This is going to send a message into your server announcements channel

	local message = blablabla
	local title = test
	Webhook.sendMessage(title, message, WEBHOOK_COLOR_YELLOW,
                        announcementChannels["serverAnnouncements"])

	Dev Comment: This lib can be used to add special webhook channels
	where you are going to send your messages. Webhook.specialSend was designed
	to be used with countless possibilities.
]]
