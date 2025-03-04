#> asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/slash/damage
#
# 発動、ってかダメージ部分
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.0
# 斬撃オブジェクトを出す
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0}}},Color:16760576,Frames:[20353,20354,20355],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.478f,0.521f,0.596f,-0.38f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    data modify storage api: Argument.ID set value 2001
    execute rotated ~ ~ positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 run function api:object/summon

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Dash.Slash
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned ^ ^ ^1.5 as @p[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset
