#> asset:mob/0023.chainsaw_zombie/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/23/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1.0 40
    playsound entity.wandering_trader.drink_potion hostile @a ~ ~ ~ 0.8 0.3
    playsound block.soul_sand.place hostile @a ~ ~ ~ 1.0 0.8
    playsound item.totem.use hostile @a ~ ~ ~ 0.1 2.0

# ダメージ設定
    data modify storage api: Argument.Damage set value 4.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
