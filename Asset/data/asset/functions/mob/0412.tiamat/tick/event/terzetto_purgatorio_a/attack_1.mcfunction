#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_1
#
# テルツェット・プルガトリオ
#
# @within
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Field
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..13] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
    playsound block.glass.break hostile @a ~ ~ ~ 2 0.7
    execute as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,distance=..12] at @s run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/effect
