#> asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/attack/

# 旋回 at @sを入れることで元の実行座標に戻す

# 予告の黄色レーザー
    execute if score @s General.Mob.Tick matches 40..100 run function asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/yellow

# 判定発生開始サウンド
    execute if score @s General.Mob.Tick matches 100 run playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 2

# 攻撃の緑レーザー
    execute if score @s General.Mob.Tick matches 100..160 run function asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/green

# レーザーの音
    execute if score @s General.Mob.Tick matches 100..160 run function asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/sound
