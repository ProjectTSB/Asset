#> asset:effect/0262.catastrophe/fullset/dis_equip
# @within function
#   asset:effect/0262.catastrophe/re-given/
#   asset:effect/0262.catastrophe/remove/

# remove が正常に機能しないバグがあるため artifact 側で処理する

# バフ削除
    # data modify storage api: Argument.ID set value 263
    # function api:entity/mob/effect/remove/from_id
    # function api:entity/mob/effect/reset

# スコアリセット
    # scoreboard players reset @s FE.LatestUseTick
    # scoreboard players reset @s FE.DamageSum
