/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
// 노래 참고 코드
// 폴더 가져오기
// https://manual.gamemaker.io/lts/en/GameMaker_Language/GML_Reference/File_Handling/File_Directories/directory_exists.htm

// 파일 가져오기
// https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FFile_Handling%2FFile_System%2Ffile_find_next.htm&rhsearch=file_find&rhhlterm=file_find

data=load_csv("Data.csv");
var w=ds_grid_width(data);
var h=ds_grid_height(data);
for(var i=1;i<h;i++)
{
	var tmp=instance_create_depth(x,y+32*i,0,obj_user);
	tmp.name=data[# 0,i];
}