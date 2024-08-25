#> asset:mob/0401.darkness_spellbook/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0401.darkness_spellbook/_/init

# スコア設定
    scoreboard players set @s B5.Tick 0

# 見た目召喚
    summon marker ~ ~ ~ {Tags:["B5.Marker","B5.Temp","AllowProcessingCommonTag","AutoKillWhenDieVehicle"]}

# 乗せる
    ride @e[type=marker,tag=B5.Marker,tag=B5.Temp,distance=..0.01,limit=1] mount @s

# タグ外し
    execute on passengers run tag @s remove B5.Temp
