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
    execute store result score $Random Temporary run random value 0..2

# 使用回数とランダムで斬撃演出を変える
# 斬撃パターンは2種類で交互に変わる
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/1
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/2
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/3
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/4
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/5
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/trigger/slash_vfx/6

# 使用回数リセット
    execute if entity @s[scores={TY.Count=2..}] run scoreboard players reset @s TY.Count

# 自身に共鳴・紅バフを付与
    data modify storage api: Argument.ID set value 228
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 周囲に共鳴・蒼バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1078.pigeon_blood/trigger/4.search_resonance

# デバッグ用共鳴Tag
    #tag @s add Resonance

#> Private
# @private
    #declare tag Critical

# クリティカル判定
    execute if predicate lib:random_pass_per/20 run tag @s add Critical

# クリティカル演出
    execute if entity @s[tag=Critical] anchored eyes positioned ^ ^ ^ run particle note ~ ~0.4 ~ 0.22 0 0 1 0 normal @a
    execute if entity @s[tag=Critical] at @e[type=#lib:living,tag=Victim,distance=..10] run particle end_rod ~ ~1.2 ~ 0 0 0 0.25 30

# ダメージ
# クリティカルでダメージ上昇、共鳴時にダメージ上昇
    execute store result storage api: Argument.Damage int 1 run random value 380..700
    execute if entity @s[tag=Critical] store result storage api: Argument.Damage float 1.5 run data get storage api: Argument.Damage
    execute if entity @s[tag=Resonance] store result storage api: Argument.Damage float 1.2 run data get storage api: Argument.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 共鳴攻撃
    execute if entity @s[tag=Resonance] run function asset:artifact/1078.pigeon_blood/trigger/5.resonance_cooldown

# リセット処理部
    tag @s[tag=Resonance] remove Resonance
    tag @s[tag=Critical] remove Critical
    scoreboard players reset $Random Temporary
