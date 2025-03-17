#> asset:mob/0372.tutankhamen/tick/skill/laser/shoot/
#
# 拡散レーザー部分
#
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 演出
    execute positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete1 player @a ~ ~ ~ 1.5 2
    execute positioned ^ ^ ^1 run playsound tsb_sounds:blaster1 player @a ~ ~ ~ 1.5 2
    #execute positioned ^ ^ ^1 run playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 1 2

# 拡散させて、前方のランダムな位置からレーザーが飛ぶ。ブレイブロッド。
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1.0
        data modify storage lib: Argument.Spread set value 1.0
    # 拡散
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # その位置から実行
        execute at @e[type=marker,tag=SpreadMarker,limit=1] rotated as @s run function asset:mob/0372.tutankhamen/tick/skill/laser/shoot/summon
    # リセット
        kill @e[type=marker,tag=SpreadMarker]
