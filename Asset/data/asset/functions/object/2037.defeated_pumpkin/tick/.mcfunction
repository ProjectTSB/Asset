#> asset:object/2037.defeated_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2037/tick

# 召喚されてすぐは浮遊状態
# 一定tick経過で射出されて落下してくる
# そこから地面に落ちると爆発する

# 地面に落ちると、2037.OnGroundタグが付与され、Tickが1000に変更される

# 仕様上、召喚した座標の1ブロック下に上手く落ちてくるようになっている、というかそれが前提

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# playsound
# particleはrecursive/.mcfで行う
    execute if entity @s[scores={General.Object.Tick=..40}] run function asset:object/2037.defeated_pumpkin/tick/first_sounds

# 浮遊状態の終わり
    execute if entity @s[scores={General.Object.Tick=40}] run tag @s remove 2037.FirstLevitation
    execute if entity @s[scores={General.Object.Tick=40}] run data modify storage asset:context this.Speed set value 2

# 花火を召喚
    execute if entity @s[scores={General.Object.Tick=57}] run summon firework_rocket ~ ~ ~ {Life:5,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16750848,14221567]}]}}}}

# デバッグ用
    #execute if entity @s[scores={General.Object.Tick=40..}] run scoreboard players add @s Temporary 1

# スピード設定
    execute if entity @s[scores={General.Object.Tick=40}] run data modify storage asset:context this.MovePerStep set value -1
    execute if entity @s[scores={General.Object.Tick=44}] run data modify storage asset:context this.MovePerStep set value -0.25
    execute if entity @s[scores={General.Object.Tick=48}] run data modify storage asset:context this.MovePerStep set value -0.125
    execute if entity @s[scores={General.Object.Tick=56}] run data modify storage asset:context this.MovePerStep set value 0
    execute if entity @s[scores={General.Object.Tick=64}] run data modify storage asset:context this.MovePerStep set value 0.125

# 回転
# 最初の浮遊時、または着地後は回転しない
    execute if entity @s[tag=2037.LeftRotate,tag=!2037.FirstLevitation,tag=!2037.OnGround] run tp @s ~ ~ ~ ~13.5 ~
    execute if entity @s[tag=!2037.LeftRotate,tag=!2037.FirstLevitation,tag=!2037.OnGround] run tp @s ~ ~ ~ ~-13.5 ~

# 一度小さくなる
    execute if entity @s[scores={General.Object.Tick=1010}] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 0.8
    execute if entity @s[scores={General.Object.Tick=1010}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=1010}] run data modify entity @s transformation.scale set value [0.3f,0.3f,0.3f]
    execute if entity @s[scores={General.Object.Tick=1010}] run data modify entity @s transformation.translation set value [0f,0f,0.35f]

# デカくなる
    execute if entity @s[scores={General.Object.Tick=1020}] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 0.5
    execute if entity @s[scores={General.Object.Tick=1020}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=1020}] run data modify entity @s transformation.scale set value [5f,5f,5f]
    execute if entity @s[scores={General.Object.Tick=1020}] run data modify entity @s transformation.translation set value [0f,0f,-2f]

# 爆発する
    execute if entity @s[scores={General.Object.Tick=1030}] run function asset:object/2037.defeated_pumpkin/tick/last_burst

# 継承
    execute if entity @s[tag=!2037.OnGround] at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=180..999}]
    kill @s[scores={General.Object.Tick=1100..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
