#> asset:object/2054.lastboss_white_pillar/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2054/init

# サウンド
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 1

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 7673623
    data modify storage api: Argument.FieldOverride.Scale set value [4f,4f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 15
    data modify storage api: Argument.ID set value 2063
    execute at @s positioned ~ ~0.1 ~ run function api:object/summon
