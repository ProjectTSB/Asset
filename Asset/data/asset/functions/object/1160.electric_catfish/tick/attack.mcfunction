#> asset:object/1160.electric_catfish/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/1160.electric_catfish/tick/**

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"

# SteppedOnタグがついたEntityが対象
    execute as @e[tag=1160.SteppedOn,distance=..2,limit=1] run function api:damage/

# 周囲のMobにもダメージ
    execute store result storage api: Argument.Damage float 0.5 run data get storage asset:context this.Damage
    execute positioned ~-3.5 ~ ~-3.5 as @e[type=#lib:living_without_player,tag=!1160.SteppedOn,dx=7,dz=7] positioned ~ ~-0.2 ~ if entity @s[dx=7,dz=7] run function api:damage/

# リセット
    tag @e[tag=1160.SteppedOn,distance=..2,limit=1] remove 1160.SteppedOn

# 0.5秒のクールダウン
    scoreboard players set @s 1160.Cooldown 10
    tag @s add 1160.Inactive

# 演出
    particle dust 1 1 0 2 ~ ~ ~ 1.5 0.1 1.5 0 100

    playsound entity.player.hurt neutral @a ~ ~ ~ 2 0.5
    playsound entity.allay.hurt neutral @a ~ ~ ~ 2 2.0
    playsound enchant.thorns.hit neutral @a ~ ~ ~ 2 1.0
