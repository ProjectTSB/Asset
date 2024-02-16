#> asset:effect/0206.spirit_state/recover/teleport
# @within function asset:effect/0206.spirit_state/recover/

#> Private
# @private
    #declare tag 5Q.Teleport

# テレポート
    summon marker ~ ~ ~ {Tags:["5Q.Teleport"]}
    data modify entity @e[type=marker,tag=5Q.Teleport,limit=1] Pos set from storage asset:context this.PrevPos
    teleport @s @e[type=marker,tag=5Q.Teleport,limit=1]
    kill @e[type=marker,tag=5Q.Teleport]
