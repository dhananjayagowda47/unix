BEGIN{
FS="|"
printf("Salary statement of Employees\n");
printf("SNo\tEmp_Id\tName\tBasic salary\tDA\tHRA\tgross salary\n");
printf("-----------------------------------------------------------------\n");
}

{
sno++
if($5<10000)
  {
  da=$5*0.45
  hra=$5*0.15
  grs=$5+da+hra
  }
  else
  {
  da=$5*0.50
  hra=$5*0.20
  grs=$5+da+hra
  }

printf("%d\t%d\t%s\t%d\t%d\t%d\t%d\n",sno,$1,$2,$5,da,hra,grs);
tda=tda+da
thra=thra+hra
tgrs=tgrs+grs
}

END{
printf("-----------------------------------------------------------------\n");
printf("Total DA=%d\tTotal HRA=%d\tTotal gross salary=%d\n",tda,thra,tgrs);
printf("-----------------------------------------------------------------\n");
}
