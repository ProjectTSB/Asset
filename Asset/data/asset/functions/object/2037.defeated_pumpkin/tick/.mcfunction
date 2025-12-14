#> asset:object/2037.defeated_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2037/tick

# 召喚されてすぐは落ちて、浮遊する
# 一定tick経過で射出されて消滅

# 地面に落ちると、2037.OnGroundタグが付与され、Tickが1に変更される

# 仕様上、召喚した座標の1ブロック下に上手く落ちてくるようになっている、というかそれが前提

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute if entity @s[scores={General.Object.Tick=11}] run data modify storage asset:context this.MovePerStep set value 0

# playsound
# particleはrecursive/.mcfで行う
    execute if entity @s[scores={General.Object.Tick=61}] run data modify storage asset:context this.MovePerStep set value -0.05
    execute if entity @s[scores={General.Object.Tick=61..100}] run function asset:object/2037.defeated_pumpkin/tick/first_sounds

# 浮遊状態の終わり
    execute if entity @s[scores={General.Object.Tick=100}] run tag @s remove 2037.FirstLevitation
    execute if entity @s[scores={General.Object.Tick=100}] run data modify storage asset:context this.StepPerTick set value 2
    execute if entity @s[scores={General.Object.Tick=100}] run data modify storage asset:context this.MovePerStep set value -1

# 花火を召喚
    #execute if entity @s[scores={General.Object.Tick=115}] run summon firework_rocket ~ ~ ~ {Life:5,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16750848,14221567]}]}}}}

# カボチャをドロップ
    execute if entity @s[scores={General.Object.Tick=140}] run summon item ~ ~2 ~ {Item:{id:"carved_pumpkin",Count:1b}}

# 回転
# 最初の浮遊時、または着地後は回転しない
    execute if entity @s[tag=2037.LeftRotate,tag=!2037.FirstLevitation] run tp @s ~ ~ ~ ~13.5 ~
    execute if entity @s[tag=!2037.LeftRotate,tag=!2037.FirstLevitation] run tp @s ~ ~ ~ ~-13.5 ~

# 継承
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
