#> asset:object/2068.golden_watermelon/1st_explode/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2068/1st_explode

# 複数箇所から実行されるのでやりやすいようにメソッドにしたが、正直間違いな気がしている
# メソッドで継承のためのモノのような認識がある
# tick/下に置くのも違うなーと思っていて、どうしようって感じ

# 既にヒットしているなら中断
    execute if entity @s[tag=2068.1stHit] run return 0

# ヒットTagを付与
    tag @s add 2068.1stHit

# Speedを0へ
    data modify storage asset:context this.MovePerStep set value 0

# 演出
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 1 0
    particle dust 0.173 1 0.243 3 ~ ~ ~ 1.5 1.5 1.5 0 30 normal @a
    particle explosion ~ ~ ~ 1 1 1 0 5 normal @a
    particle large_smoke ~ ~ ~ 0 0 0 0.3 40 normal @a

# ノーマル以上で鈍化を付与
    execute if predicate api:global_vars/difficulty/min/normal run effect give @a[tag=!PlayerShouldInvulnerable,distance=..2.5] slowness 1 1 true

# 水属性ダメージ
    data modify storage api: Argument.Damage set value 20
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの金色の爆発により消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの爆発により生命を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset
