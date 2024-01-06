#> asset:mob/0338.corundum_twins/app/call_from_twins/1.remove
#
# 双子側から呼び出されるremove処理
#
# @within
#    function asset:mob/0339.twins_sapphiel/death/2.death
#    function asset:mob/0339.twins_sapphiel/remove/2.remove
#    function asset:mob/0340.twins_rubiel/death/2.death
#    function asset:mob/0340.twins_rubiel/remove/2.remove

# 自身を消去
    kill @s

# 独自remove処理に移譲
    function asset:mob/0338.corundum_twins/remove/app/1.remove
