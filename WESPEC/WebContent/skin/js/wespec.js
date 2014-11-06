function delete_confirm(path)
{
	if(confirm('해당 항목을 정말 삭제 하시겠습니까?'))
	{
		window.location.replace(path);
	}
	
}