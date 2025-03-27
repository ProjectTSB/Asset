#> asset:mob/0007.ectoplasm/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/7/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ設定
    data modify storage api: Argument.Damage set value 4.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 演出
    execute as @p[tag=Victim] at @s run playsound entity.puffer_fish.hurt hostile @a ~ ~ ~ 1 0
    execute as @p[tag=Victim] at @s run particle soul ~ ~1 ~ 0 0 0 0.1 10

# マナを吸い取る
    data modify storage api: Argument.Fluctuation set value -15
    execute as @p[tag=Victim] run function api:mp/fluctuation
