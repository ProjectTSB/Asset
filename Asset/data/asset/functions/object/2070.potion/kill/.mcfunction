#> asset:object/2070.potion/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2070/kill

# 共通playsound
    playsound block.glass.break hostile @a ~ ~ ~ 1 1 0

# 属性別の処理
    execute if data storage asset:context this{Element:Fire} run function asset:object/2070.potion/kill/fire
    execute if data storage asset:context this{Element:Water} run function asset:object/2070.potion/kill/water
    execute if data storage asset:context this{Element:Thunder} run function asset:object/2070.potion/kill/thunder/

# 消滅
    kill @s
