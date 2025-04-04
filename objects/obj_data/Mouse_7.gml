/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(sprite_index==icon_210)
{
	for(var i=0;i<array_length(datas);i++)
	{
		if(datas[i].selected)
		{
			ds_list_add(play_users,datas[i].name);
		}
	}

	randomize();
	while(!ds_list_empty(play_users))
	{
		var index=irandom(ds_list_size(play_users)-1);
		team1[array_length(team1)]=play_users[|index];
		ds_list_delete(play_users,index);
		if(!ds_list_empty(play_users))
		{
			index=irandom(ds_list_size(play_users)-1);
			team2[array_length(team2)]=play_users[|index];
			ds_list_delete(play_users,index);
		}
	}
	instance_destroy(obj_user);
	instance_destroy(obj_select_button);
}

if(sprite_index==icon_384)
{
	room_restart()
}
else if(sprite_index==icon_210)
{
	sprite_index=icon_384
}
