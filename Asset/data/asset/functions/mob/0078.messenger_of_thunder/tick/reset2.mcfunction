#> asset:mob/0078.messenger_of_thunder/tick/reset2
#
# リセットした後すぐに別のスキルに移行する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/**/1

# リセット
    scoreboard players set @s 26.Tick -10
    tag @s remove 26.Thunder
    tag @s remove 26.ThunderCurtain
    tag @s remove 26.ReturnThunder
    tag @s remove 26.TeleportSpread
    tag @s remove 26.PredictThunder
    tag @s remove 26.NotFirst
