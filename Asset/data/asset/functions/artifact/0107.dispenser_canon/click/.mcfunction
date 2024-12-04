#> asset:artifact/0107.dispenser_canon/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/107/click/

    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.tnt.primed player @a

# TNT召喚
    summon endermite ~ ~1.5 ~ {Silent:1b,Team:"NoCollision",FallDistance:99f,DeathTime:15s,Tags:["TNTStick"],Passengers:[{id:"minecraft:tnt",fuse:40s}],active_effects:[{id:"invisibility",amplifier:1b,duration:2147483647}]}

# TNTを飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute as @e[type=endermite,tag=TNTStick,distance=..2] facing ^ ^ ^10 run function lib:motion/
    data remove storage lib: Argument
# スケジュール
    schedule function asset:artifact/0107.dispenser_canon/click/3.1.sticky 1t