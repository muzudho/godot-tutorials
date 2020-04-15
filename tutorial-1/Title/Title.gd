extends Node2D

signal game_start

func _on_Title_game_start():
	# ゲームが始まったんなら、タイトル・シーンは隠そうぜ☆（＾～＾）
	print("タイトル・シーンさん「 隠れとこ……☆（＾～＾）」")
	hide()

func _on_StartButton_pressed():
	# スタートボタンが押されたら、 game_start シグナルを出せだぜ☆（＾～＾）
	print("タイトル・シーンさん「 おい、スタート・ボタンが押されたぜ☆（＾～＾）！ 誰か game_start シグナルを受け取れだぜ☆（＾～＾）！」")
	emit_signal("game_start")


func _on_Game_game_end():
	# ゲームオーバーしたようなら、このタイトル画面を表示しようぜ☆（＾～＾）？
	print("タイトル・シーンさん「 もうゲームオーバーか……☆（＾～＾） ゲーム画面はもっと仕事した方がいいと思う☆（＾～＾）」")
	show()


func _on_QuitButton_pressed():
	# Quit ボタンを押したら終了だぜ☆（＾～＾）
	print("タイトル・シーンさん「 おつ☆（＾～＾）」")
	get_tree().quit()
