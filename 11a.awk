BEGIN{
	FS="|";
	printf("Number of book sold for each department\n");
	printf("Department\t Sold books\n");
	printf("------------------------------\n");
}
{
	arr[$1]+=$2
	tot+=$2
}

END{
	for(i in arr)
	{
		printf("%s\t%d\n",i,arr[i]);
	}
	printf("------------------------------\n");
	printf("Total number of book sold:%d\n",tot);
	printf("------------------------------\n");
} 

