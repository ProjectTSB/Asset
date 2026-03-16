#> asset:mob/0186.ferocious_bee/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/186/tick

# Tickスコア
    scoreboard players add @s General.Mob.Tick 1

# HurtTimeのデクリメント
    execute store result storage asset:context this.HurtTime._ int 0.999999999 run data get storage asset:context this.HurtTime._

# スコアが-1以下 && HurtTime中でない ならプレイヤーを追尾する
    execute if entity @s[scores={General.Mob.Tick=..-1}] if data storage asset:context this.HurtTime{_:0} run function asset:mob/0186.ferocious_bee/tick/turning
# スコアが0の時にプレイヤーが近くにいなければスコアをリセット
    execute if entity @s[scores={General.Mob.Tick=0}] unless entity @p[gamemode=!spectator,distance=..40] run function asset:mob/0186.ferocious_bee/tick/reset
# 0..19の時に、近くのプレイヤーに軸合わせする
    execute if entity @s[scores={General.Mob.Tick=0..19}] anchored eyes run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..40] eyes
# 突進直前に速度設定
    execute if entity @s[scores={General.Mob.Tick=20}] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Charge
# 20以上で突進
    execute if entity @s[scores={General.Mob.Tick=20..}] run function asset:mob/0186.ferocious_bee/tick/move
# 突進時に攻撃
    execute if entity @s[scores={General.Mob.Tick=20..}] positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0186.ferocious_bee/tick/damage/

# スコアリセット
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0186.ferocious_bee/tick/reset

# のけぞりから復帰
    execute if data storage asset:context this.HurtTime{_:0,NoAI:false} run function asset:mob/0186.ferocious_bee/tick/end_hurt_time

# 演出
    execute if entity @s[scores={General.Mob.Tick=20}] run playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Mob.Tick=20..}] run particle cloud ^ ^0.7 ^-0.8 0.25 0.25 0.25 0 0

# カベにぶつかった際の処理はない。壁は貫通するもの

# デスポーン処理
    execute unless entity @p[gamemode=!spectator,distance=..40] run function api:mob/remove
