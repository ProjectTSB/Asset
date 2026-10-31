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
    execute if score @s General.Mob.Tick matches ..-1 if data storage asset:context this.HurtTime{_:0} run function asset:mob/0186.ferocious_bee/tick/move/turning
# プレイヤーが近くにいなければスコアをリセット
    execute if score @s General.Mob.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..40] run function asset:mob/0186.ferocious_bee/tick/reset
# 軸合わせする
    execute if score @s General.Mob.Tick matches 0..19 anchored eyes run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..40] eyes
# 突進直前の諸々
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0186.ferocious_bee/tick/before_charge
# 突進
    execute if score @s General.Mob.Tick matches 20.. run function asset:mob/0186.ferocious_bee/tick/move/charge
# 突進終了
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0186.ferocious_bee/tick/reset

# のけぞりから復帰
    execute if data storage asset:context this.HurtTime{_:0,NoAI:false} run function asset:mob/0186.ferocious_bee/tick/end_hurt_time

# カベにぶつかった際の処理はない。壁は貫通するもの

# デスポーン処理
    execute unless entity @p[gamemode=!spectator,distance=..40] run function api:mob/remove
