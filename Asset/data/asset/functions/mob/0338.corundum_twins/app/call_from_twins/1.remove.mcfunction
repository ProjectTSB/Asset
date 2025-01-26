#> asset:mob/0338.corundum_twins/app/call_from_twins/1.remove
#
# 双子側から呼び出されるremove処理
#
# @within
#    function asset:mob/0339.twins_sapphiel/death/
#    function asset:mob/0339.twins_sapphiel/remove/
#    function asset:mob/0340.twins_rubiel/death/
#    function asset:mob/0340.twins_rubiel/remove/

# 自身を消去
    function api:mob/remove

# 独自remove処理に移譲
    function asset:mob/0338.corundum_twins/remove/app/1.remove
