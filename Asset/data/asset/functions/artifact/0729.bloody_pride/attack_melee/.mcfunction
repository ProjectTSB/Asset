#> asset:artifact/0729.bloody_pride/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/729/attack_melee/

#> Private
# @private
    #declare score_holder $Count
    #declare score_holder $MaxHP1.5Per
    #declare score_holder $HealValue

# 演出
    execute at @e[tag=Victim,distance=..6] run particle dust 0.639 0 0 1 ~ ~1.2 ~ 0.4 0.6 0.4 0 12 normal @a
    execute at @e[tag=Victim,distance=..6] run particle block redstone_block ~ ~1.2 ~ 0.4 0.6 0.4 0 10 normal @a
    execute at @e[tag=Victim,distance=..6] run playsound entity.spider.step player @a ~ ~ ~ 0.3 2 0

# ここより下は回復の処理

# 回復量は1+最大体力×0.15N (Nはホットバーにある数)

# 個数取得
    execute store result score $Count Temporary run data get storage asset:context Count

# 1.5%分を取得(intの都合上100倍している)
    function api:modifier/max_health/get
    execute store result score $MaxHP1.5Per Temporary run data get storage api: Return.MaxHealth 1.5

# 個数分掛け算する
    execute store result score $HealValue Temporary run scoreboard players operation $MaxHP1.5Per Temporary *= $Count Temporary

# 最低値の1のために$HealValueに100を足して、Argument.Healに代入する
    execute store result storage api: Argument.Heal float 0.01 run scoreboard players operation $HealValue Temporary += $100 Const

# 回復の処理
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $HealValue Temporary
    scoreboard players reset $MaxHP1.5Per Temporary
