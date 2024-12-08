#> asset:object/2087.patriot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2087/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 向きをボスへ向ける
    execute facing entity @e[tag=Enemy.Boss,distance=..128,limit=1] eyes run tp @s ~ ~ ~ ~ ~

#加速
#命中判定
execute at @s run function asset:object/super.tick
#攻撃
#テンプレートからオブジェクト->テンプレート->メソッド->hit_entity
