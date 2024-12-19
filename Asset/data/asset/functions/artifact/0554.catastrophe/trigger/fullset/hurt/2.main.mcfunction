#> asset:artifact/0554.catastrophe/trigger/fullset/hurt/2.main
#
# フルセット時の被ダメのメイン処理
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/hurt/1.trigger

# 前回効果発動時の時間との差からクールダウン中かどうかを判定する
    execute store result score $FE.Cooldown Temporary run time query gametime
    scoreboard players operation $FE.Cooldown Temporary -= @s FE.Cooldown
    execute if score $FE.Cooldown Temporary matches 20.. run function asset:artifact/0554.catastrophe/trigger/fullset/hurt/3.damage
    scoreboard players reset $FE.Cooldown

# 破滅の騎士道バフ(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
