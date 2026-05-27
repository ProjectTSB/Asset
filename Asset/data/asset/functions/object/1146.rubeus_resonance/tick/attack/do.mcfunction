#> asset:object/1146.rubeus_resonance/tick/attack/do
# @within function asset:object/1146.rubeus_resonance/tick/attack/

#> Private
# @private
    #declare score_holder $VU.Random
    #declare tag VU.Candidate

# 演出
    # 0~2の乱数を求める
        execute store result score $VU.Random Temporary run random value 0..2
    # VFX
        execute positioned ^ ^ ^-0.3 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/square
        execute if entity @s[scores={General.Object.Tick=3}] if score $VU.Random Temporary matches 0 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/slash1
        execute if entity @s[scores={General.Object.Tick=3}] if score $VU.Random Temporary matches 1 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/slash2
        execute if entity @s[scores={General.Object.Tick=3}] if score $VU.Random Temporary matches 2 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/slash3
        execute if entity @s[scores={General.Object.Tick=6}] if score $VU.Random Temporary matches 0 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/slash4
        execute if entity @s[scores={General.Object.Tick=6}] if score $VU.Random Temporary matches 1 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/slash5
        execute if entity @s[scores={General.Object.Tick=6}] if score $VU.Random Temporary matches 2 run function asset:object/1146.rubeus_resonance/tick/attack/vfx/slash6
    # SFX
        playsound ogg:item.trident.throw1 player @a ~ ~ ~ 0.5 1.1
        playsound ogg:item.trident.throw2 player @a ~ ~ ~ 0.5 0.8
    # リセット
        scoreboard players reset $VU.Random Temporary
# ターゲット
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2.8] add VU.Candidate
    execute positioned ^ ^ ^-1.4 run tag @e[type=#lib:living,type=!player,tag=VU.Candidate,distance=..1.2] remove VU.Candidate
# ダメージ
# 候補のうち最寄りの１体に攻撃する
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    # data modify storage api: Argument.ElementType set value "None"
    execute as @a[tag=VU.Owner,limit=1] run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=VU.Candidate,distance=..2.8,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset
# リセット
    tag @e[type=#lib:living,type=!player,tag=VU.Candidate,distance=..2.8] remove VU.Candidate
