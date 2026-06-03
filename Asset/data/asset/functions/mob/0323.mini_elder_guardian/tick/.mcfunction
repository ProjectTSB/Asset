#> asset:mob/0323.mini_elder_guardian/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/323/tick

# 疑似HurtTimeによるのけぞり管理
    execute store result storage asset:context this.HurtTime int 0.9999999999 run data get storage asset:context this.HurtTime
    execute if data storage asset:context this{HurtTime:0} run data modify entity @s NoAI set value 1b
    execute if data storage asset:context this{HurtTime:0} run data modify storage asset:context this.HurtTime set value -1

# 呪い(採掘速度低下)
    execute store result storage asset:context this.CurseCooldown._ int 0.9999999999 run data get storage asset:context this.CurseCooldown._
    execute if data storage asset:context this.CurseCooldown{_:0} run function asset:mob/0323.mini_elder_guardian/tick/event/curse/
    execute if data storage asset:context this.CurseCooldown{_:0} run data modify storage asset:context this.CurseCooldown._ set from storage asset:context this.CurseCooldown.Max

# 付近にプレイヤーがいたら攻撃待機
    execute if entity @p[gamemode=!spectator,distance=..8] run data modify storage asset:context this.AttackMode set value true

# 攻撃モード
    execute if data storage asset:context this{AttackMode:true} anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.1 ~ run function asset:mob/0323.mini_elder_guardian/tick/event/attack/

# 遠くに離れたら攻撃モード終了
    execute if data storage asset:context this{AttackMode:true} unless entity @p[gamemode=!spectator,distance=..15] run function asset:mob/0323.mini_elder_guardian/tick/event/attack/reset

# 攻撃中でない && HurtTime中ではない、ならsuper.tick
    execute if data storage asset:context this{AttackMode:false,HurtTime:-1} run function asset:mob/super.tick
