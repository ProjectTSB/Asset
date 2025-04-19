#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.1.attack_0
#
# アニメーションのイベントハンドラ 前半・簡易魔法 発射
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main
#   function asset:mob/0327.eclael/debug_damage

# 攻撃
    data modify storage api: Argument.ID set value 2206
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Magic
    execute positioned ~ ~ ~ run function api:object/summon
