#> asset:mob/0369.prominence_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/369/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# 後退モード時は速度が下がる
# 幾何学の処理をしてかつ、後ろがブロックじゃないかつ、足元がブロックじゃなければ後退
    # execute if entity @s[scores={A9.StepBack=0..}] facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s positioned ~ ~1.8 ~ if block ^ ^ ^-0.1 #lib:no_collision positioned ~ ~-1.8 ~ if block ~ ~0 ~ #lib:no_collision if block ~ ~1.5 ~ #lib:no_collision run tp @s ^ ^ ^-0.1 ~ ~

# 後退諸々の処理
    # Tickのデクリメント
        execute store result storage asset:context this.MoveBackTick._ int 0.9999999999 run data get storage asset:context this.MoveBackTick._
    # プレイヤーが近くにいれば3秒間後退モードになる
        execute if entity @p[gamemode=!spectator,distance=..5] if data storage asset:context this.MoveBackTick{_:0} run data modify storage asset:context this.MoveBackTick._ set from storage asset:context this.MoveBackTick.Max
    # 後退時、プレイヤーが近くにいなければ後退を終了する
        execute unless entity @p[gamemode=!spectator,distance=..10] unless data storage asset:context this.MoveBackTick{_:0} run data modify storage asset:context this.MoveBackTick._ set value 0

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0369.prominence_spellbook/tick/ready
