#> asset:mob/0380.haruclaire_v3/tick/event/punch/attack_punch
#
# ぶんぶんぶん殴り
#
# @within asset:mob/0380.haruclaire_v3/tick/event/punch/

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add AK.Temp.Hit
    execute if entity @a[tag=AK.Temp.Hit] run playsound entity.player.hurt_sweet_berry_bush hostile @a ~ ~ ~ 1 0.7

# ダメージ
    data modify storage api: Argument.Damage set value 34.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりで なぐられた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    execute as @a[tag=AK.Temp.Hit] run function api:damage/
    function api:damage/reset
    tag @a remove AK.Temp.Hit

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.5
