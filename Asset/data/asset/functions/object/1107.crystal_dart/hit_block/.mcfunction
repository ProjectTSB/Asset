#> asset:object/1107.crystal_dart/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1107/hit_block

# 実行者を反射軌道で0.1m前進
    scoreboard players set $Speed Lib 15
    function lib:reflection_bullet/

# 敵がいるならそっちを向く
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20] run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes

# ヒット判定復活
    tag @s remove 1107.CannotHit
# 反射回数が6なら死
    execute store result storage asset:context this.Refrection int 0.9999999999 run data get storage asset:context this.Refrection 1
    execute if data storage asset:context this{Refrection:0} run function asset:object/call.m {method:kill}
