#> asset:artifact/0462.456_dice/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/462/click/

#> Private
# @private
    #declare tag CU.Target

# サイコロを振る
    # 疑似乱数取得
        execute store result score @s Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation @s Temporary %= $3 Const
    # 0~2の値を4~6になるように4加算
        scoreboard players add @s Temporary 4

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
