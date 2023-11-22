#> asset:mob/0330.aurora_reaper/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0330.aurora_reaper/attack/1.trigger

# 演出
    execute positioned ^ ^1.2 ^0.6 rotated ~ ~-4 run function asset:mob/0330.aurora_reaper/attack/vfx
    playsound entity.player.attack.sweep hostile @a ~ ~ ~ 0.7 1.4 0
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.2 2 0

# プレイヤーと同じ剣(鎌)の振り方
    item replace entity @s weapon.mainhand with stick{CustomModelData:20158}

# ダメージ
    data modify storage lib: Argument.Damage set value 37f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって斬り裂かれオーロラに消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset

# MPを割合で減少させる ハードで割合増加
    execute as @p[tag=Victim] run function api:mp/get_max

# 最大MPの8%/12%を減少させる
    execute store result score $Fluctuation Lib run data get storage api: Return.MaxMP -0.08
    execute if predicate api:global_vars/difficulty/min/hard store result score $Fluctuation Lib run data get storage api: Return.MaxMP -0.12
    execute as @p[tag=Victim] run function lib:mp/fluctuation