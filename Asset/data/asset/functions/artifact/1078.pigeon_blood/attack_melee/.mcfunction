#> asset:artifact/1078.pigeon_blood/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1078/attack_melee/


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
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/slash_vfx/1
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/slash_vfx/2
    execute if entity @s[scores={TY.Count=1}] if score $Random Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/slash_vfx/3
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/slash_vfx/4
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/slash_vfx/5
    execute if entity @s[scores={TY.Count=2}] if score $Random Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/slash_vfx/6

# 使用回数リセット
    execute if entity @s[scores={TY.Count=2..}] run scoreboard players reset @s TY.Count

# 自身に共鳴・紅バフを付与
    data modify storage api: Argument.ID set value 228
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 周囲に共鳴・蒼バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1078.pigeon_blood/attack_melee/4.search_resonance

# デバッグ用共鳴Tag
    #tag @s add Resonance

#> Private
# @private
    #declare tag Critical
    #declare score_holder $RandomDamage
    #declare score_holder $301

# 301を定義
    scoreboard players set $301 Temporary 301

# ダメージのブレ(0~300)
    execute store result score $RandomDamage Temporary run function lib:random/
    scoreboard players operation $RandomDamage Temporary %= $301 Temporary
    scoreboard players add $RandomDamage Temporary 350

# クリティカル判定
    execute if predicate lib:random_pass_per/20 run tag @s add Critical

# クリティカル演出
    execute if entity @s[tag=Critical] anchored eyes positioned ^ ^ ^ run particle note ~ ~0.4 ~ 0.22 0 0 1 0 normal @a
    execute if entity @s[tag=Critical] at @e[type=#lib:living,tag=Victim,distance=..10] run particle end_rod ~ ~1.2 ~ 0 0 0 0.25 30

# ダメージ
# クリティカルでダメージ上昇、共鳴時にダメージ上昇
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $RandomDamage Temporary
    execute if entity @s[tag=Critical] store result storage api: Argument.Damage float 1.5 run data get storage api: Argument.Damage
    execute if entity @s[tag=Resonance] store result storage api: Argument.Damage float 1.2 run data get storage api: Argument.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 共鳴攻撃
    execute if entity @s[tag=Resonance] run function asset:artifact/1078.pigeon_blood/attack_melee/5.resonance_cooldown

# リセット処理部
    tag @s[tag=Resonance] remove Resonance
    tag @s[tag=Critical] remove Critical
    scoreboard players reset $Random Temporary
    scoreboard players reset $301 Temporary
    scoreboard players reset $RandomDamage Temporary
