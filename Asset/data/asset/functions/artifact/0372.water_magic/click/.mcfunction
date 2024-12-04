#> asset:artifact/0372.water_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/372/click/


# ダメージ用AECを召喚
    execute rotated ~ 0 positioned ~ ~0.3 ~ run summon area_effect_cloud ^ ^ ^5 {Radius:0f,Duration:21,Tags:["Uninterferable","AC.Water","AC.First"]}

# スコアセット
    scoreboard players set @e[type=area_effect_cloud,tag=AC.First] AC.Time 0

# ユーザーID適応
    scoreboard players operation @e[type=area_effect_cloud,tag=AC.First] AC.UserID = @s UserID

# タグを消す
    tag @e[type=area_effect_cloud,tag=AC.First] remove AC.First

# Scheduleセット
    schedule function asset:artifact/0372.water_magic/click/3.1.loop 1t replace