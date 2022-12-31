local MinimapAPI = require("scripts.minimapapi")

MinimapAPI.CustomIcons = Sprite()
MinimapAPI.CustomIcons:Load("gfx/ui/minimapapi/custom_icons.anm2",true)

--PILLS

MinimapAPI:AddIcon("PillBlueBlue", MinimapAPI.CustomIcons, "CustomIconPillBlueBlue", 0)
MinimapAPI:AddIcon("PillOrangeOrange", MinimapAPI.CustomIcons, "CustomIconPillOrangeOrange", 0)
MinimapAPI:AddIcon("PillWhiteWhite", MinimapAPI.CustomIcons, "CustomIconPillWhiteWhite", 0)
MinimapAPI:AddIcon("PillReddotsRed", MinimapAPI.CustomIcons, "CustomIconPillReddotsRed", 0)
MinimapAPI:AddIcon("PillPinkRed", MinimapAPI.CustomIcons, "CustomIconPillPinkRed", 0)
MinimapAPI:AddIcon("PillBlueCadetblue", MinimapAPI.CustomIcons, "CustomIconPillBlueCadetBlue", 0)
MinimapAPI:AddIcon("PillYellowOrange", MinimapAPI.CustomIcons, "CustomIconPillYellowOrange", 0)
MinimapAPI:AddIcon("PillOrangedotsWhite", MinimapAPI.CustomIcons, "CustomIconPillOrangedotsWhite", 0)
MinimapAPI:AddIcon("PillWhiteAzure", MinimapAPI.CustomIcons, "CustomIconPillWhiteAzure", 0)
MinimapAPI:AddIcon("PillBlackYellow", MinimapAPI.CustomIcons, "CustomIconPillBlackYellow", 0)
MinimapAPI:AddIcon("PillWhiteBlack", MinimapAPI.CustomIcons, "CustomIconPillWhiteBlack", 0)
MinimapAPI:AddIcon("PillWhiteYellow", MinimapAPI.CustomIcons, "CustomIconPillWhiteYellow", 0)

MinimapAPI:AddIcon("DoubleHeart", MinimapAPI.CustomIcons, "CustomIconDoubleHeart", 0)
MinimapAPI:AddIcon("DoublePenny", MinimapAPI.CustomIcons, "CustomIconCoinDouble", 0)
MinimapAPI:AddIcon("Nickel", MinimapAPI.CustomIcons, "CustomIconNickel", 0)
MinimapAPI:AddIcon("Dime", MinimapAPI.CustomIcons, "CustomIconDime", 0)
MinimapAPI:AddIcon("LuckyPenny", MinimapAPI.CustomIcons, "CustomIconLuckyPenny", 0)
MinimapAPI:AddIcon("StickyNickel", MinimapAPI.CustomIcons, "CustomIconNickelSticky", 0)
MinimapAPI:AddIcon("KeyRing", MinimapAPI.CustomIcons, "CustomIconKeyRing", 0)
MinimapAPI:AddIcon("DoubleBomb", MinimapAPI.CustomIcons, "CustomIconDoubleBomb", 0)
MinimapAPI:AddIcon("Trophy", MinimapAPI.CustomIcons, "CustomIconTrophy", 0)
MinimapAPI:AddIcon("CheckeredFlag", MinimapAPI.CustomIcons, "CustomIconFlag", 0)
MinimapAPI:AddIcon("Shovel", MinimapAPI.CustomIcons, "CustomIconShovel", 0)

MinimapAPI:AddIcon("TarotCard", MinimapAPI.CustomIcons, "CustomIconTarotCard", 0)
MinimapAPI:AddIcon("SuitCard", MinimapAPI.CustomIcons, "CustomIconSuitCard", 0)
MinimapAPI:AddIcon("RuneRight", MinimapAPI.CustomIcons, "CustomIconRuneRight", 0)
MinimapAPI:AddIcon("RuneBlack", MinimapAPI.CustomIcons, "CustomIconRuneBlack", 0)
MinimapAPI:AddIcon("CreditCard", MinimapAPI.CustomIcons, "CustomIconCreditCard", 0)
MinimapAPI:AddIcon("GetOutOfJail", MinimapAPI.CustomIcons, "CustomIconGetOutOfJail", 0)
MinimapAPI:AddIcon("CardAgainstHumanity", MinimapAPI.CustomIcons, "CustomIconCardAgainstHumanity", 0)
MinimapAPI:AddIcon("HolyCard", MinimapAPI.CustomIcons, "CustomIconHolyCard", 0)
MinimapAPI:AddIcon("MomsContract", MinimapAPI.CustomIcons, "CustomIconMomsContract", 0)
MinimapAPI:AddIcon("DiceShard", MinimapAPI.CustomIcons, "CustomIconDiceShard", 0)
MinimapAPI:AddIcon("MagicCard", MinimapAPI.CustomIcons, "CustomIconMagicCard", 0)

MinimapAPI:AddIcon("ShellGame", MinimapAPI.CustomIcons, "CustomIconShellGame", 0)
MinimapAPI:AddIcon("HeavenDoor", MinimapAPI.CustomIcons, "CustomIconHeavenDoor", 0)
if REPENTANCE then -- Repentance exclusive icons
	MinimapAPI:AddIcon("KeyShard", MinimapAPI.CustomIcons, "CustomIconKeyShard", 0)

	MinimapAPI:AddIcon("ReverseCard", MinimapAPI.CustomIcons, "CustomIconReverseCard", 0)
	for i=0,16 do
		MinimapAPI:AddIcon("Soul"..(i + 81), MinimapAPI.CustomIcons, "CustomIconSouls", i)
	end

	MinimapAPI:AddIcon("UnusCard", MinimapAPI.CustomIcons, "CustomIconUnusCard", 0)

	MinimapAPI:AddIcon("RuneShard", MinimapAPI.CustomIcons, "CustomIconRuneShard", 0)

	MinimapAPI:AddIcon("HellGame", MinimapAPI.CustomIcons, "CustomIconHellGame", 0)

	MinimapAPI:AddIcon("BigPoopNugget", MinimapAPI.CustomIcons, "CustomIconPoop", 1)
	MinimapAPI:AddIcon("WhiteFireplace", MinimapAPI.CustomIcons, "CustomIconWhiteFireplace", 0)
end
local itemConfig = Isaac.GetItemConfig()

MinimapAPI:AddPickup("Trophy","CheckeredFlag",5,370,-1,nil,"trophies",15000)
MinimapAPI:AddPickup("BigChest","CheckeredFlag",5,340,-1,nil,"trophies",15000)
MinimapAPI:AddPickup("Shovel","Shovel",5,110,-1,nil,"trophies",15000)

MinimapAPI:AddPickup("DoubleHeart","DoubleHeart",5,10,5,MinimapAPI.PickupNotCollected,"hearts",14150)

MinimapAPI:AddPickup("RuneBlack","RuneBlack",5,300,-1,MinimapAPI.PickupNotCollected,"runes",10050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 7 end)
MinimapAPI:AddPickup("RuneRight","RuneRight",5,300,-1,MinimapAPI.PickupNotCollected,"runes",10000,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 4 end)

MinimapAPI:AddPickup("SuitCard","SuitCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 2 end)
MinimapAPI:AddPickup("MomsContract","MomsContract",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 5 end)
MinimapAPI:AddPickup("DiceShard","DiceShard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 6 end)
MinimapAPI:AddPickup("MagicCard","MagicCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 8 end)
MinimapAPI:AddPickup("CardAgainstHumanity","CardAgainstHumanity",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 9 end)
MinimapAPI:AddPickup("CreditCard","CreditCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 10 end)
MinimapAPI:AddPickup("HolyCard","HolyCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 11 end)
MinimapAPI:AddPickup("GetOutOfJail","GetOutOfJail",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 12 end)
MinimapAPI:AddPickup("TarotCard","TarotCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9000,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 1 end)

MinimapAPI:AddPickup("PillBlueBlue","PillBlueBlue",5,70,PillColor.PILL_BLUE_BLUE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillOrangeOrange","PillOrangeOrange",5,70,PillColor.PILL_ORANGE_ORANGE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillWhiteWhite","PillWhiteWhite",5,70,PillColor.PILL_WHITE_WHITE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillReddotsRed","PillReddotsRed",5,70,PillColor.PILL_REDDOTS_RED,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillPinkRed","PillPinkRed",5,70,PillColor.PILL_PINK_RED,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillBlueCadetblue","PillBlueCadetblue",5,70,PillColor.PILL_BLUE_CADETBLUE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillYellowOrange","PillYellowOrange",5,70,PillColor.PILL_YELLOW_ORANGE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillOrangedotsWhite","PillOrangedotsWhite",5,70,PillColor.PILL_ORANGEDOTS_WHITE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillWhiteAzure","PillWhiteAzure",5,70,PillColor.PILL_WHITE_AZURE,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillBlackYellow","PillBlackYellow",5,70,PillColor.PILL_BLACK_YELLOW,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillWhiteBlack","PillWhiteBlack",5,70,PillColor.PILL_WHITE_BLACK,MinimapAPI.PickupNotCollected,"pills",8050)
MinimapAPI:AddPickup("PillWhiteYellow","PillWhiteYellow",5,70,PillColor.PILL_WHITE_YELLOW,MinimapAPI.PickupNotCollected,"pills",8050)

MinimapAPI:AddPickup("KeyRing","KeyRing",5,30,3,MinimapAPI.PickupNotCollected,"keys",7050)

MinimapAPI:AddPickup("DoubleBomb","DoubleBomb",5,40,2,MinimapAPI.PickupNotCollected,"bombs",6050)

MinimapAPI:AddPickup("Dime","Dime",5,20,3,MinimapAPI.PickupNotCollected,"coins",4090)
MinimapAPI:AddPickup("LuckyPenny","LuckyPenny",5,20,5,MinimapAPI.PickupNotCollected,"coins",4080)
MinimapAPI:AddPickup("Nickel","Nickel",5,20,2,MinimapAPI.PickupNotCollected,"coins",4070)
MinimapAPI:AddPickup("StickyNickel","Nickel",5,20,6,MinimapAPI.PickupNotCollected,"coins",4060)
MinimapAPI:AddPickup("DoublePenny","DoublePenny",5,20,4,MinimapAPI.PickupNotCollected,"coins",4050)

MinimapAPI:AddPickup("ShellGame","ShellGame",6,6,-1,MinimapAPI.PickupSlotMachineNotBroken,"beggars",2050)

MinimapAPI:AddPickup("HeavenDoor","HeavenDoor",1000,39,0,function(p) return Game():GetLevel():IsAscent() or Isaac.GetChallenge() == Challenge.CHALLENGE_BACKASSWARDS end,"quest",100) --IsAscent() should always be false in ab+

if REPENTANCE then -- Repentance exclusive icons
	for i=81,97 do
		MinimapAPI:AddPickup("Soul"..i,"Soul"..i,5,300,i,MinimapAPI.PickupNotCollected,"runes",10050) -- so many souls this is just easier
	end
	MinimapAPI:AddPickup("RuneShard","RuneShard",5,300,-1,MinimapAPI.PickupNotCollected,"runes",10000,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 13 end)

	MinimapAPI:AddPickup("ReverseCard","ReverseCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 14 end)
	MinimapAPI:AddPickup("KeyShard","KeyShard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 15 end)
	MinimapAPI:AddPickup("UnusCard","UnusCard",5,300,-1,MinimapAPI.PickupNotCollected,"cards",9050,function(p) return itemConfig:GetCard(p.SubType).PickupSubtype == 17 end)

	MinimapAPI:AddPickup("HellGame","HellGame",6,15,-1,MinimapAPI.PickupSlotMachineNotBroken,"beggars",2250)

	MinimapAPI:AddPickup("BigPoopNugget","BigPoopNugget",5,42,1,MinimapAPI.PickupNotCollected,"poops",5050)

	MinimapAPI:AddPickup("WhiteFireplace","WhiteFireplace",33,4,-1,nil,"quest",100)
end
