#> asset:artifact/0745.blade_of_whirlwind/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0745.blade_of_whirlwind/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $BaseSpeed
    #declare score_holder $Damage

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function asset:artifact/0745.blade_of_whirlwind/trigger/4.vfx

# 移動速度を取得する
    execute store result score $Speed Temporary run attribute @s generic.movement_speed get 100000
    execute store result score $BaseSpeed Temporary run attribute @s generic.movement_speed base get 1000

# 移動速度の変化割合を計算する (e2)
    scoreboard players operation $Speed Temporary /= $BaseSpeed Temporary

# ダメージを計算する
    execute store result score $Damage Temporary run random value 420..500
    scoreboard players operation $Damage Temporary *= $Speed Temporary
# ダメージ与える
    execute store result storage api: Argument.Damage float 0.01 run scoreboard players operation $Damage Temporary < $150000 Const
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
# 自身の移動速度が 100% 以上の時に実行
    execute if score $Speed Temporary matches 1.. run function asset:artifact/0745.blade_of_whirlwind/trigger/5.knockback

# 自身の移動速度が 600% 以上の時にヒットストップ
    execute if score $Speed Temporary matches 600.. run tp @s 0 0 0
    execute if score $Speed Temporary matches 600.. run tp @s ~ ~ ~

# リセット
    function api:damage/reset
    data remove storage lib: Argument
    scoreboard players reset $Speed Temporary
    scoreboard players reset $BaseSpeed Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $VectorMagnitude Temporary
