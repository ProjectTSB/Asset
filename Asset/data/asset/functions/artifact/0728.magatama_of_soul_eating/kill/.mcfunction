#> asset:artifact/0728.magatama_of_soul_eating/kill/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/728/kill/


#> Private
# @private
    #declare score_holder $Count
    #declare score_holder $MaxHP5Per

# 演出
    particle soul ~ ~1.2 ~ 0.5 0.3 0.5 0 15 normal @a
    particle dust 0 0.5 0.5 1 ~ ~1.2 ~ 0.5 0.3 0.5 0 15 normal @a
    playsound ogg:mob.vex.idle4 player @a ~ ~ ~ 0.5 0.8
    playsound ogg:mob.vex.idle4 player @a ~ ~ ~ 0.5 0.6
    playsound ogg:mob.vex.idle4 player @a ~ ~ ~ 0.5 0.4

# 個数を取得し、その値に1を足す
# 回復量 = 5(n+1)％
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:728}}}]
    scoreboard players add $Count Temporary 1

# 5％分を100倍で取得
    function api:modifier/max_health/get
    execute store result score $MaxHP5Per Temporary run data get storage api: Return.MaxHealth 5

# MaxHP5Perを個数と掛け、Argument.Healへ代入
    execute store result storage api: Argument.Heal float 0.01 run scoreboard players operation $MaxHP5Per Temporary *= $Count Temporary

# 回復処理
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $MaxHP5Per Temporary
