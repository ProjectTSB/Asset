#> asset:mob/0456.gargo_ex_machina/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/456/death

#> Val
# @private
    #declare score_holder $Min
    #declare score_holder $Sec

# 継承元の処理実行
    function asset:mob/super.death

# kill時のparticleが見えないように
    tp @s ~ ~-100 ~

# 死亡演出
    data modify storage api: Argument.ID set value 2273
    function api:object/summon

# 中心点消去
    kill @e[type=marker,tag=CO.CenterPosition]

# 当たり判定消去
    execute as @e[type=item_display,tag=CO.ModelRoot] run function animated_java:gargo_ex_machina/as_own_locator_entities {command:'function asset:mob/0456.gargo_ex_machina/death/kill_hitbox'}
    # function animated_java:gargo_ex_machina/remove/all

# その他リセット
    # function asset:mob/0456.gargo_ex_machina/tick/util/remove_all_tag
    bossbar remove asset:co_field_modify
    bossbar remove asset:co_gem_former

# オブジェクト消去
    function animated_java:gem_attack_drone/remove/all
    function animated_java:gem_tnt_drone/remove/all
    function animated_java:gem_panjan_drone/remove/all
    execute as @e[tag=CO.Object,distance=..160] on passengers run kill @s
    kill @e[tag=CO.Object,distance=..160]

# 石像移動
    function asset:mob/0456.gargo_ex_machina/death/clone_statue

# クリアタイム表示
    execute store result score $Sec Temporary store result score $Min Temporary run scoreboard players operation @s CO.BattleTimer /= $20 Const
    scoreboard players operation $Min Temporary /= $60 Const
    scoreboard players operation $Sec Temporary %= $60 Const
    tellraw @a[distance=..80] [{"text":"-------------------------------------------------"}]
    execute if score $Sec Temporary matches 10.. run tellraw @a[distance=..80] [{"text":"【 クリアタイム："},{"score":{"name":"$Min","objective":"Temporary"}},{"text": ":"},{"score":{"name":"$Sec","objective":"Temporary"}},{"text": " !! 】"}]
    execute if score $Sec Temporary matches ..9 run tellraw @a[distance=..80] [{"text":"【 クリアタイム："},{"score":{"name":"$Min","objective":"Temporary"}},{"text": ":0"},{"score":{"name":"$Sec","objective":"Temporary"}},{"text": " !! 】"}]
    tellraw @a[distance=..80] [{"text":"-------------------------------------------------"}]
    scoreboard players reset $Min Temporary
    scoreboard players reset $Sec Temporary
