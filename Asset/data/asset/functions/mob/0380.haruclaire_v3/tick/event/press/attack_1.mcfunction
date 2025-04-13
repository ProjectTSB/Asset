#> asset:mob/0380.haruclaire_v3/tick/event/press/attack_1
#
# 押しつぶし
#
# @within asset:mob/0380.haruclaire_v3/tick/event/press/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Press2
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは ハトクレアに おしつぶされた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# 演出
    function asset:mob/0380.haruclaire_v3/tick/event/press/particle_attack

# 攻撃位置召喚
    summon area_effect_cloud ~ ~2 ~ {Tags:["AK.Temp.AttackRotation"],Duration:1}
# 弾召喚
    scoreboard players operation @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] MobUUID = @s MobUUID
    execute if predicate api:global_vars/difficulty/min/normal as @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/press/attack_piece_1
