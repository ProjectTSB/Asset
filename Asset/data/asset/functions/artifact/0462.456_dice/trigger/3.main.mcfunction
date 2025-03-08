#> asset:artifact/0462.456_dice/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0462.456_dice/trigger/2.check_condition

#> Private
# @private
    #declare tag CU.Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 4-6の範囲でサイコロを振る
    execute store result score @s Temporary run random value 4..6

# ダメージを与えるエンティティの絞り込み
    tag @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] add CU.Target

# ダイス召喚
    data modify storage api: Argument.ID set value 286
    execute anchored eyes positioned ^ ^ ^2 positioned ~ ~-2 ~ run function api:mob/summon

# サウンド
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# リセット
    scoreboard players reset @s Temporary
    tag @e[tag=CU.Target] remove CU.Target
