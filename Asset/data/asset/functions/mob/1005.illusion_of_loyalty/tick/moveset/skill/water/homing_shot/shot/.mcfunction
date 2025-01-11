#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/shot/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/

#> 行き先マーカー
# @private
#declare tag FacingMarker
#declare tag SpreadMarker

# 拡散させて実行
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["FacingMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 1
    # 拡散
        execute as @e[type=marker,tag=FacingMarker,limit=1] run function lib:forward_spreader/circle
    # その位置から実行
        function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/shot/summon
    # リセット
        kill @e[type=marker,tag=FacingMarker]

# 演出
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 1 1.5
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 1 1.2
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 50
