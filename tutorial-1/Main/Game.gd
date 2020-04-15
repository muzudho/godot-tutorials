extends Node2D

func _ready():
	# ゲームシーンは最初は隠しておこうぜ☆（＾～＾）
	hide()

func _on_Title_game_start():
	# game_start シグナルを受けたらゲームシーンを表示しようぜ☆（＾～＾）
	show()
