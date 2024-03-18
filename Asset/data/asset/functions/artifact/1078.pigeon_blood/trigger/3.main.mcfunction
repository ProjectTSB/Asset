#> asset:artifact/1078.pigeon_blood/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1078.pigeon_blood/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Random

# 演出
    playsound ogg:item.trident.throw1 player @a ~ ~ ~ 0.8 1.1
    playsound ogg:item.trident.throw2 player @a ~ ~ ~ 0.8 0.8

# 使用回数をカウントする
    scoreboard players add @s TY.Count 1

# 0~2の乱数を求める
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# 使用回数とランダムで斬撃演出を変える
# 斬撃パターンは2種類で交互に変わる
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/1
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/4
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/3
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/4
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/5
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/6

# 使用回数リセット
    execute if entity @s[scores={TY.Count=2..}] run scoreboard players reset @s TY.Count

# 自身に共鳴・紅バフを付与
    data modify storage api: Argument.ID set value 228
    function api:entity/mob/effect/give

# 周囲に共鳴・蒼バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1078.pigeon_blood/trigger/4.search_resonance

# デバッグ用共鳴Tag
    #tag @s add Resonance

#> Private
# @private
    #declare score_holder $RandomDamage
    #declare score_holder $301

# 301を定義
    scoreboard players set $301 Temporary 301

# ダメージのブレ(0~200)
    execute store result score $RandomDamage Temporary run function lib:random/
    scoreboard players operation $RandomDamage Temporary %= $301 Temporary
    scoreboard players add $RandomDamage Temporary 450

# ダメージ 共鳴時にダメージ上昇
    execute if entity @s[tag=!Resonance] store result storage api: Argument.Damage int 1 run scoreboard players get $RandomDamage Temporary
    execute if entity @s[tag=Resonance] store result storage api: Argument.Damage double 1.2 run data modify storage api: Argument.Damage set value 1
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 共鳴攻撃
    execute if entity @s[tag=Resonance] run function asset:artifact/1078.pigeon_blood/trigger/5.resonance_cooldown

# リセット処理部
    tag @s[tag=Resonance] remove Resonance
    scoreboard players reset $Random Temporary
    scoreboard players reset $301 Temporary
    scoreboard players reset $RandomDamage Temporary