#> asset:mob/0201.burnt_out_dream/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/201/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 腕振る
    item replace entity @s weapon.mainhand with stick{CustomModelData:20473}
# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Vanilla.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
