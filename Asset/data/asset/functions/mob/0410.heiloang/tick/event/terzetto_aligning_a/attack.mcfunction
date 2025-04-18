#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/attack
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/attack_main

# 弾召喚
    data modify storage api: Argument.ID set value 2111
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.TerAligBlitz
    function api:object/summon

# 演出
    particle flash ~ ~ ~ 1 1 1 0 4 force
    particle firework ~ ~ ~ 1 1 1 0.3 10 force

# 終了
    kill @s
