#> asset:object/1190.volt_charge/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1190/tick

#> Private
# @private
    #declare tag Owner
    #declare score_holder $UserID

# 既に配列が空ならkill
    execute unless data storage asset:context this.List[0] run return run function asset:object/1190.volt_charge/tick/kill

# 召喚者の位置にtpする
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner
    execute as @p[tag=Owner] at @s anchored eyes positioned ^-0.5 ^ ^1 as @e[type=text_display,tag=this,distance=..128,sort=nearest,limit=1] run function asset:object/1190.volt_charge/tick/tp

# 召喚者がいなければkillしてしまう
    execute unless entity @p[tag=Owner,distance=..128] run kill @s

# 文字変更
    data modify storage asset:temp Args.Char set from storage asset:context this.List[-1]
    function asset:object/1190.volt_charge/tick/change_char.m with storage asset:temp Args
    data remove storage asset:context this.List[-1]

# リセット
    data remove storage asset:temp Args
    scoreboard players reset $UserID Temporary
