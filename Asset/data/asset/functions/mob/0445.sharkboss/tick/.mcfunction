#> asset:mob/0445.sharkboss/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/445/tick

# HP%取得（被ってるので何とかする）
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

#AJモデルを追従させる
  execute at @s as @e[type=item_display,tag=CD.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

#帯電状態ならパーティクルを出す
  execute if entity @s[tag=CD.Electrified] run particle cloud ~ ~ ~ 1 1 1 0 2

#帯電時はタイマーを進める
  scoreboard players add @s General.Mob.Tick 1
  scoreboard players add @s CD.AnimationTimer 1
  execute if entity @s[tag=CD.Charging] run scoreboard players add @s CD.Timer 1
  #execute if score @s General.Mob.Tick matches 100 run function asset:mob/0445.sharkboss/tick/skill/bite

#十分に体力が削られたらDPSチェック成功
  execute if entity @s[tag=CD.Charging] if score $HealthPer Temporary < @s CD.DpsCheckThreshold run function asset:mob/0445.sharkboss/tick/action/utility/end
  execute if entity @s[tag=CD.Charging] if score $HealthPer Temporary < @s CD.DpsCheckThreshold run tag @s add CD.Reserving
  execute if entity @s[tag=CD.Charging] if score $HealthPer Temporary < @s CD.DpsCheckThreshold run tag @s add CD.Action.Down1
  execute if entity @s[tag=CD.Charging] if score $HealthPer Temporary < @s CD.DpsCheckThreshold run tag @s remove CD.Electrified
  execute if entity @s[tag=CD.Charging] if score $HealthPer Temporary < @s CD.DpsCheckThreshold run tag @s remove CD.Charging

#次の行動が可能になったら行動ガチャとタイマースタート（0から始まる）
  execute if entity @s[tag=CD.CanAction] run function asset:mob/0445.sharkboss/tick/select_action/

#イベントハンドラ
  #空中のやつ
  execute if entity @s[tag=CD.Action.Bite] at @s run function asset:mob/0445.sharkboss/tick/action/bite
  execute if entity @s[tag=CD.Action.Tail] at @s run function asset:mob/0445.sharkboss/tick/action/tail
  execute if entity @s[tag=CD.Action.Spin] at @s run function asset:mob/0445.sharkboss/tick/action/spin
  execute if entity @s[tag=CD.Action.BiteTail] at @s run function asset:mob/0445.sharkboss/tick/action/bite_tail
  execute if entity @s[tag=CD.Action.Move] at @s run function asset:mob/0445.sharkboss/tick/action/move
  execute if entity @s[tag=CD.Action.EMP] at @s run function asset:mob/0445.sharkboss/tick/action/emp

  #地中のやつ
  execute if entity @s[tag=CD.Action.WaterGun1] at @s run function asset:mob/0445.sharkboss/tick/action/watergun1
  execute if entity @s[tag=CD.Action.WaterGun2] at @s run function asset:mob/0445.sharkboss/tick/action/watergun2
  execute if entity @s[tag=CD.Action.Rush1] at @s run function asset:mob/0445.sharkboss/tick/action/rush1
  execute if entity @s[tag=CD.Action.Rush2] at @s run function asset:mob/0445.sharkboss/tick/action/rush2
  execute if entity @s[tag=CD.Action.Rush3] at @s run function asset:mob/0445.sharkboss/tick/action/rush3

  execute if entity @s[tag=CD.Action.Sharknado1] at @s run function asset:mob/0445.sharkboss/tick/action/sharknado1
  execute if entity @s[tag=CD.Action.Sharknado2] at @s run function asset:mob/0445.sharkboss/tick/action/sharknado2
  execute if entity @s[tag=CD.Action.Sharknado3] at @s run function asset:mob/0445.sharkboss/tick/action/sharknado3

  execute if entity @s[tag=CD.Action.Down1] at @s run function asset:mob/0445.sharkboss/tick/action/down1
  execute if entity @s[tag=CD.Action.Down2] at @s run function asset:mob/0445.sharkboss/tick/action/down2
  execute if entity @s[tag=CD.Action.Down3] at @s run function asset:mob/0445.sharkboss/tick/action/down3 

  execute if entity @s[tag=CD.Action.Puffer1] at @s run function asset:mob/0445.sharkboss/tick/action/puffer1
  execute if entity @s[tag=CD.Action.Puffer2] at @s run function asset:mob/0445.sharkboss/tick/action/puffer2
  #execute if score @s CD.AnimationTimer matches 100.. run function asset:mob/0445.sharkboss/tick/action/utility/end

#タイマーに応じた処理↓試作用
  # execute if score @s CD.AnimationTimer matches 2 run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 1 1.8
  # execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:entity.zombie.break_wooden_door ambient @a ~ ~ ~ 1 1
  # execute if score @s CD.AnimationTimer matches 36 run playsound minecraft:entity.player.splash ambient @a ~ ~ ~ 1 1.2
  # execute if score @s CD.AnimationTimer matches 38 run playsound minecraft:entity.player.splash.high_speed ambient @a ~ ~ ~ 1 1.2
  # execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:entity.breeze.shoot ambient @a ~ ~ ~ 1 2

  # execute if score @s CD.AnimationTimer matches 26 run particle minecraft:cloud ^ ^1 ^2 0.5 0.5 0.5 0.5 10 normal
  # execute if score @s CD.AnimationTimer matches 38 run particle minecraft:splash ^ ^ ^2 1 1 1 0 100 normal
  # execute if score @s CD.AnimationTimer matches 40 run particle minecraft:splash ^ ^ ^2 1 1 1 0 100 normal

# データ設定
#    data modify storage api: Argument.FieldOverride set value {Color:5436415,Interpolation:10,Tick:28,Scale:[4f,4f]}

# 攻撃予告の召喚
#  data modify storage api: Argument.ID set value 2113
#  execute if score @s CD.AnimationTimer matches 0 positioned ^ ^0.1 ^-0.7 run function api:object/summon
