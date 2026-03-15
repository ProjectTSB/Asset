#> asset:mob/0369.prominence_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/369/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# 後退諸々の処理
    # Tickのデクリメント
        execute store result storage asset:context this.MoveBackTick._ int 0.9999999999 run data get storage asset:context this.MoveBackTick._
    # プレイヤーが近くにいれば3秒間後退モードになる
        execute if data storage asset:context this{IsMoveBack:false} if entity @p[gamemode=!spectator,distance=..5] run function asset:mob/0369.prominence_spellbook/tick/move_back_mode/start
    # 残りtickが0になったとき、後退モードを終了する
        execute if data storage asset:context this{MoveBackTick:0,IsMoveBack:true} run function asset:mob/0369.prominence_spellbook/tick/move_back_mode/end
    # 後退時、プレイヤーが近くにいなければ後退を終了する
        execute if data storage asset:context this{IsMoveBack:true} unless entity @p[gamemode=!spectator,distance=..10] run function asset:mob/0369.prominence_spellbook/tick/move_back_mode/end

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0369.prominence_spellbook/tick/ready
