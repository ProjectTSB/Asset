#> asset:object/1215.miniature_volcano/tick/teleport/
#
#
#
# @within function asset:object/1215.miniature_volcano/tick/

#> Private
# @private
    #declare tag Target

# ランダムな敵を選ぶ
    execute positioned ~ ~-15 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,distance=..8,sort=random,limit=1] add Target

# Targetの真上にテレポート
    execute at @e[type=#lib:living_without_player,tag=Target,distance=..30] rotated ~ -90 run function asset:object/1215.miniature_volcano/tick/teleport/at_target

# Targetがいなかったら適当にワープする
    execute unless entity @e[type=#lib:living_without_player,tag=Target,distance=..30] run function asset:object/1215.miniature_volcano/tick/teleport/no_target

# リセット
    tag @e[type=#lib:living_without_player,tag=Target,distance=..30,limit=1] remove Target
