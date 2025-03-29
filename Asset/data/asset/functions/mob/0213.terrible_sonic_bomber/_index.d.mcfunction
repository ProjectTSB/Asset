#> asset:mob/0213.terrible_sonic_bomber/_index.d
# @private

#> tag_common
# @within
#   function asset:mob/0213.terrible_sonic_bomber/**
#   function asset:mob/0214.drone/**
#   function asset:object/2204.sonicbomber_leftwing/**
    #declare tag 5X.Centre #旋回中心座標を示す、基本的には呪われた剣の位置と一致する。イギリス綴りなので誤字ではない
    #declare tag 5X.StartAction #初期モーションが終わって行動開始している意味
    #declare tag 5X.WingStraight #直線翼になっているかどうか
    #declare tag 5X.CannotUseDrone #ドローンを使用可能かどうか ドローン発動中は使用不可、ドローン発動後別の攻撃を1回した後使用可能になる
    #declare tag 5X.Mine75Per #空中散布地雷のHP75%以下発動を実行したかどうか
    #declare tag 5X.Mine50Per #空中散布地雷のHP50%以下発動を実行したかどうか
    #declare tag 5X.Mine25Per #空中散布地雷のHP25%以下発動を実行したかどうか

#> tag_inter_object
# @within
#   function asset:mob/0213.terrible_sonic_bomber/**
#   function asset:object/2083.brimstone/**
    #declare tag 5X.BrimstoneTarget #旋回中心座標を示す、基本的には呪われた剣の位置と一致する。イギリス綴りなので誤字ではない

#> aj
# @within
#   function asset:mob/0213.terrible_sonic_bomber/**
#   function asset:object/2203.sonicbomber_destroyed/**
    #declare tag 5X.ModelRoot
    #declare function animated_java:terrible_sonic_bomber/remove/this
    #declare function animated_java:terrible_sonic_bomber/summon
    #declare function animated_java:terrible_sonic_bomber/animations/default/play
    #declare function animated_java:terrible_sonic_bomber/animations/roll_straight/play
    #declare function animated_java:terrible_sonic_bomber/animations/roll_back/play
    #declare function animated_java:terrible_sonic_bomber/animations/wing_back/play
    #declare function animated_java:terrible_sonic_bomber/animations/wing_straight/play
    #declare function animated_java:terrible_sonic_bomber/animations/destroy/play
    #declare function animated_java:terrible_sonic_bomber/animations/roll_back_and_wing_straight/play
    #declare function animated_java:terrible_sonic_bomber/animations/roll_straight_and_wing_back/play
