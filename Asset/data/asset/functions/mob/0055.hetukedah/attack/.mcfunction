#> asset:mob/0055.hetukedah/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/55/attack

# super.attack
    function asset:mob/super.attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage api: Argument.Damage set value 6.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.ravager.attack hostile @a ~ ~ ~ 1 1
