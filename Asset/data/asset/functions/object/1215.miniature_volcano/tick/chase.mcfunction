#> asset:object/1215.miniature_volcano/tick/chase
#
#
#
# @within function asset:object/1215.miniature_volcano/tick/

# TargetMobUUID持ちがいれば追尾
    $execute facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,scores={MobUUID=$(TargetMobUUID)},distance=..20,limit=1] eyes positioned ^ ^ ^-120 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
