#> asset:artifact/0730.lake_reflecting_starry_sky/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/730/click/


# 演出
    playsound minecraft:block.end_portal.spawn neutral @a ~ ~ ~ 0.3 1.4 0
    particle end_rod ~ ~1.2 ~ 0 0 0 0.4 150 normal @a

# 湖を召喚
    summon marker ~ ~0.1 ~ {Tags:["Object","KA.Lake","KA.RejoinTarget"]}

# UserIDをコピー
    scoreboard players operation @e[type=marker,tag=KA.Lake,distance=..0.11,limit=1] KA.UserID = @s UserID

# 湖のループ
    schedule function asset:artifact/0730.lake_reflecting_starry_sky/click/lake/loop 1t replace