#> asset:object/1209.pluvia_circle/tick/facing.m
#
#
#
# @within function asset:object/1209.pluvia_circle/tick/

# 10ブロック下から半径10以内の標的に、魔法陣の位置から向きを合わせる
    $execute positioned ~ ~-10 ~ if entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..10] positioned as @s facing entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..20] eyes run tp @s ~ ~ ~ ~ ~
