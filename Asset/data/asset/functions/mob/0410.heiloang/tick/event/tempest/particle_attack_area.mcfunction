#> asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
#
# テンペスト
#
# @within asset:mob/0410.heiloang/tick/event/tempest/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 近くのテンペストオブジェクトを自分の位置に移動
    execute as @e[type=item_display,tag=2121.Main,tag=!BE.Temp.MoveEnd,tag=!2121.StartAttack,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/event/tempest/move_attack_pos
