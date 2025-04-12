#> asset:mob/0439.dps_checker_boy/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/439/init

#> Private
# @private
    #declare tag Init

# テキストを召喚、自分の上に乗せる
    summon text_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],billboard:"center",brightness:{sky:15,block:15},text:'[{"text":"DPS: ","underlined":true},{"text":"waiting..."}]',background:16711680}
    ride @e[type=text_display,tag=Init,limit=1] mount @s
    tag @e[type=text_display,tag=Init,limit=1] remove Init
