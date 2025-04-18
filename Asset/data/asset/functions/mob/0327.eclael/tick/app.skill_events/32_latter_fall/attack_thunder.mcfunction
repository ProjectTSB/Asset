#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_thunder
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check

# 攻撃
    data modify storage api: Argument.ID set value 2206
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=this,distance=..80,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Fall2
    execute positioned ~ ~0.5 ~ run function api:object/summon
