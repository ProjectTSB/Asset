#> asset:mob/0059.jack_o_lantern/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/59/attack

# スーパーメソッド呼び出し
    function asset:mob/super.attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0 10 normal @a

# 火属性ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Vanilla
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによりカボチャの怨念を受け、燃え尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより呪いの炎を受けた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
